class CommandController < ApplicationController
  def sale
    @sales_products = Product.where.not(sale_price: nil)
  end

  def new
    @new_products = Product.where('created_at >= ?', 3.days.ago)
  end
end
