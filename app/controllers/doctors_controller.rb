class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @doctors = Doctor.all

    flash.now[:notice] = "Tienes #{@doctors.count}" + " especialista".pluralize(@doctors.count)
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.user = current_user
    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctor_path(@doctor), notice: 'El especialista fue creado exitosamente' }
      else
        format.html { render :new, alert: flash.now[:alert] = 'El especialista no se pudo crear' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to doctor_path(@doctor), notice: 'El especialista se actualizó correctamente' }
      else
        format.html { render :edit, alert: flash.now[:alert] = 'El especialista no se pudo actualizar' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @doctor.destroy
        format.html { redirect_to doctor_path(@doctor), notice: 'El especialista fue eliminado exitosamente' }
      else
        format.html { render :show, alert: flash.now[:alert] = 'No se pudo eliminar al especialista' }
      end
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :age, :profession, :specialty, :user_id, :college_number)
  end
end
