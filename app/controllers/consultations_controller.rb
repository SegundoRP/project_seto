class ConsultationsController < ApplicationController
  before_action :set_consultation, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @consultations = Consultation.all

    flash.now[:notice] = "Tenemos #{@consultations.size} consultas en total."
  end

  def show
  end

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    respond_to do |format|
      if @consultation.save
        format.html { redirect_to consultation_path(@consultation), notice: 'La consulta fue creada exitosamente' }
      else
        format.html { redirect_to new_consultation_path, alert: 'La consulta no se pudo crear' }
      end

    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @consultation.update(consultation_params)
        format.html { redirect_to consultation_path(@consultation), notice: 'La consulta fue actualizada correctamente' }
      else
        format.html { render :edit, alert: 'La consulta no se pudo actualizar' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @consultation.destroy
        format.html { redirect_to consultations_path, notice: 'La consulta fue eliminada exitosamente' }
      end
    end
  end

  private

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end

  def consultation_params
    params.require(:consultation).permit(:date, :status, :summary, :reason_consultation, :doctor_id, :patient_id, :type_of_service_id)
  end
end
