class ProductsController < ApplicationController
  def index
    @products = Product.all.order('name ASC').page params[:page]
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keyword]}%"

    if params['category'].blank? || params['category']['id'].blank?
      @products = Product.all
    else
      @category = Category.find(params['category']['id'])
      @products = @category.products
    end
    @products = @products.where('name LIKE ? OR description LIKE ?', wildcard_search, wildcard_search)
  end
end
