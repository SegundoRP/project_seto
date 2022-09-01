class TypeOfServicesController < ApplicationController
  before_action :set_type_of_service, only: %i[show update destroy]
  before_action :authenticate_user!

  def index
    @type_of_services = TypeOfService.all
  end

  def show
  end

  def new
    @type_of_service = TypeOfService.new
  end

  def create
    @type_of_service = TypeOfService.new(type_of_service_params)

    respond_to do |format|
      if @type_of_service.save
        format.html { redirect_to type_of_service_path(@type_of_service), notice: 'El tipo de servicio fue creado exitosamente' }
      else
        format.html { render :new, notice: 'No se pudo crear el tipo de servicio' }
      end
    end
  end

  def update
    respond_to do |format|
      if @type_of_service.update(type_of_service_params)
        format.html { redirect_to type_of_service_path(@type_of_service), notice: 'El tipo de servicio fue actualizado' }
      else
        format.html { render :new, notice: 'No se pudo actualizar el tipo de servicio' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @type_of_service.destroy
        format.html { redirect_to type_of_services_path, notice: 'El tipo de servicio fue eliminado' }
      end
    end
  end

  private

  def set_type_of_service
    @type_of_service = TypeOfService.find(params[:id])
  end

  def type_of_service_params
    params.require(:type_of_service).permit(:name_of_service, :price)
  end
end
