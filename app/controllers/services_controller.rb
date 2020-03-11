class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
  end

  def edit
    @service = Service.find(params[:id])
  end

    # Update show method once booking controller is done.
  def show
    @service = Service.new
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
  end

    def destroy
      @service = Service.find(params[:id])
      @service.destroy
      redirect_to services_path
    end


  private

  def service_params
    params.require(:service).permit(:name, :price, :description)
  end

end
