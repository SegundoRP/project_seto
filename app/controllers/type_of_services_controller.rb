class TypeOfServicesController < ApplicationController
  before_action :set_type_of_service, only: %i[show update destroy]
  before_action :authenticate_user!

  def index
    @type_of_services = TypeOfService.all
  end

  def show
  end

  def new

  end

  def create

  end

  def update

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

  end

end
