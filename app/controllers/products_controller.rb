class ProductsController < ApplicationController
  def index
    @products = Product.all.order('name ASC').page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keyword]}%"
    @products = Product.where('name LIKE ? OR description LIKE ?', wildcard_search, wildcard_search)
  end
end
