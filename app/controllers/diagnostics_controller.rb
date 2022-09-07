class DiagnosticsController < ApplicationController
  before_action :set_diagnostic, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def show
  end

  def new
    @diagnostic = Diagnostic.new
  end

  def create
    @diagnostic = Diagnostic.new(diagnostic_params)
    respond_to do |format|
      if @diagnostic.save
        format.html { redirect_to diagnostic_path(@diagnostic), notice: 'El diagnóstico fue creado exitosamente' }
      else
        format.html { render :new, alert: flash.now[:alert] = 'El diagnóstico no pudo ser creado' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @diagnostic.update(diagnostic_params)
        format.html { redirect_to diagnostic_path(@diagnostic), notice: 'El diagnóstico fue actualizado exitosamente' }
      else
        format.html { render :edit, alert: flash.now[:alert] = 'El diagnóstico no pudo ser actualizado' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @diagnostic.destroy
        format.html { redirect_to diagnostic_path(@diagnostic), notice: 'El diagnóstico fue eliminado exitosamente' }
      else
        format.html { render :show, alert: flash.now[:alert] = 'El diagnóstico no pudo ser eliminado' }
      end
    end
  end

  private

  def set_diagnostic
    @diagnostic = Diagnostic.find(params[:id])
  end

  def diagnostic_params
    params.require(:diagnostic).permit(:description, :patient_id)
  end
end
