class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to patient_path(@patient)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_path, notice: 'El paciente fue eliminado exitosamente' }
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :last_name, :age, :email, :phone, :address, :civil_state,
                                    :children, :instruction_grade, :occupation)
  end
end
