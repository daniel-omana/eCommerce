class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :increment_visit_count
  helper_method :visit_count

  # SHOPPING CARD
  helper_method :cart

  private

  # SHOPPING CARD
  def initialize_session
    session[:shopping_cart] ||= [] # Array of product ids
  end

  def cart
    Product.find(session[:shopping_cart]) # return a collection of Product objects based on the product ids.
  end

  # VISIT COUNTER - FOR FUNS
  def initialize_session
    session[:visit_count] ||= 0
  end

  def increment_visit_count
    session[:visit_count] += 1
  end

  def visit_count
    session[:visit_count]
  end
end
