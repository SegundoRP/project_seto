class ConsultationsController < ApplicationController
  before_action :set_patient, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @consultations = Consultation.all
  end

  def show
    @consultation =
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def set_consultation

  end

  def consultation_params
    params.require(:consultation).permit(:date, :status, :summary, :reason_consultation, :doctor_id, :patient_id, :type_of_service_id)
  end
end
