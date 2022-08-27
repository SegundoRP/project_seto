class TreatmentsController < ApplicationController
skip_before_action :authenticate_user!

  def show
  end

  private

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params

  end
end
