class ProductsController < ApplicationController
  def index
    @products = Product.all.order('name ASC').page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end
end
