class TreatmentsController < ApplicationController
  before_action :set_treatment, only: %i[show update destroy]
  skip_before_action :authenticate_user!

  def show
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to treatment_path(@treatment), notice: 'El tratamiento fue creado exitosamente' }
      else
        format.html { render :new, alert: flash.now[:alert] = 'El tratamiento no pudo ser creado' }
      end
    end
  end

  def update
    respond_to do |format|
      if @treatment.update(treatment_params)
        format.html { redirect_to treatment_path(@treatment), notice: 'El tratamiento fue actualizado exitosamente' }
      else
        format.html { render :new, alert: flash.now[:alert] = 'El tratamiento no pudo ser actualizado' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @treatment.destroy
        format.html { redirect_to new_treatment_path, notice: 'El tratamiento fue eliminado exitosamente' }
      else
        format.html { render :show, alert: flash.now[:alert] = 'El tratamiento no pudo ser eliminado' }
      end
    end
  end

  private

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end

  def treatment_params
    params.require(:treatment).permit(:duration, :start_time, :about, :diagnostic_id)
  end
end
