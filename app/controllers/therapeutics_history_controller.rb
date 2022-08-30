class TherapeuticsHistoryController < ApplicationController
  before_action :set_therapeutics_history, only: %i[show update destroy]

  def show
  end

  def new
    @therapeutics_history = TherapeuticsHistory.new
  end

  def create
    @therapeutics_history = TherapeuticsHistory.new(therapeutics_history_params)

    respond_to do |format|
      if @therapeutics_history.save
        format.html { redirect_to therapeutics_history_path(@therapeutics_history), notice: 'La historia terapeútica ha sido creada' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @therapeutics_history.update(therapeutics_history_params)
        format.html { redirect_to therapeutics_history_path(@therapeutics_history), notice: 'La historia terapeútica ha sido actualizada' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    if @therapeutics_history.destroy
      format.html { redirect_to :new, notice: 'La historia terapeútica fue eliminada' }
    end
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
