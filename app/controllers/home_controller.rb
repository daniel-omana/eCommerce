class HomeController < ApplicationController
  def index
    @manufacturers = Manufacturer.all.order('name ASC')

    @products = Product.all.order('name ASC')

    @categories = Category.all.order('name ASC')
  end
end
