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
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @diagnostic.update(diagnostic_params)
      redirect_to diagnostic_path(@diagnostic)
    else
      render :edit
    end
  end

  def destroy
    @diagnostic.destroy

    respond_to do |format|
      format.html { redirect_to diagnostic_path(@diagnostic), notice: 'El diagnóstico fue eliminado exitosamente' }
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
