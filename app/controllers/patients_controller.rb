class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @patients = Patient.all

    flash.now[:notice] = "Tienes #{@patients.size}" + " paciente".pluralize(@patients.count)
  end

  def show
  end

  def new
    @patient = Patient.new
    @patient.consultations.build
  end

  def create
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save
        format.html { redirect_to patient_path(@patient), notice: 'El paciente fue creado exitosamente' }
      else
        format.html { redirect_to new_patient_path, alert: flash.now[:alert] = 'El paciente no se pudo crear' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_path(@patient), notice: 'El paciente se actualizó correctamente' }
      else
        format.html { render :edit, alert: flash.now[:alert] = 'El paciente no se pudo actualizar' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @patient.destroy
        format.html { redirect_to patients_path, notice: 'El paciente fue eliminado exitosamente' }
      else
        format.html { render @patient.errors, alert: flash.now[:alert] = 'No se pudo eliminar el paciente' }
      end
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :age, :email, :phone, :address, :civil_state,
                                    :children, :instruction_grade, :occupation,
                                    consultations_attributes: %i[date doctor_id patient_id status
                                                                 summary reason_consultation type_of_service_id
                                                                 _destroy])
  end
end
