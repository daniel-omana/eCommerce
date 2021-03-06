class CartController < ApplicationController
  # POST /cart
  # Data sent as form data (params)
  def create
    # Add item to cart
    id = params[:id].to_i
    unless session[:shopping_cart].include?(id)
      session[:shopping_cart] << id unless session[:shopping_cart].include?(id)
      product = Product.find(id)
      flash[:notice] = "#{product} was added to the cart"
    end
    redirect_to root_path
  end

  # DELETE /cart/:id
  def destroy
    # Remove params[:id] from the cart.
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    product = Product.find(id)
    flash[:notice] = "#{product} was removed from the cart"

    redirect_to root_path
  end
end
