class TherapeuticsHistoryController < ApplicationController
  before_action :set_therapeutics_history, only: %i[show]

  def show
  end

  def new
    @therapeutics_history = TherapeuticsHistory.new
  end

  def create

  end

  private

  def set_therapeutics_history
    @therapeutics_history = TherapeuticsHistory.find(params[:id])
  end

  def therapeutics_history_params
    params.require(:therapeutics_history).permit(:first_time_attention, :previous_diagnostic, :events_in_life,
                                                 :previous_treatment, :familiar_antecedent)
  end
end
