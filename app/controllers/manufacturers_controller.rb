class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all.order("name ASC")
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end
end
