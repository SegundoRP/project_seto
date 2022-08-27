class TreatmentsController < ApplicationController
  before_action :set_treatment, only: %i[show]
  skip_before_action :authenticate_user!

  def show
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:duration, :start_time, :about, :diagnostic_id)
  end
end
