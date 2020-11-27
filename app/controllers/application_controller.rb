class ApplicationController < ActionController::Base
  # SHOPPING CARD
  before_action :initialize_session
  helper_method :cart

  private

  # SHOPPING CARD
  def initialize_session
    session[:shopping_cart] ||= [] # Array of product ids
  end

  def cart
    Product.find(session[:shopping_cart]) # return a collection of Product objects based on the product ids.
  end
end
