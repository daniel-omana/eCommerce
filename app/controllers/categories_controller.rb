class CategoriesController < ApplicationController
  def index
    @categories = Category.all.order("name ASC")
  end

  def show
    @category = Category.find(params[:id])
  end
end
