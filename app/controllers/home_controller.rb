class HomeController < ApplicationController
  def index
    @manufacturers = Manufacturer.all.order('name ASC')

    @products = Product.all.order('created_at DESC').page params[:page]

    @categories = Category.all.order('name ASC')

    @sales = Product.all.where('sale_price NOT NULL')
  end
end
