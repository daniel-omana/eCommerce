class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category

  validates :name, :description, :retail_price, :sale_price, :quantity, presence: true
  validates :name, uniqueness: true
  validates :quantity, numericality: { only_integer: true }
  validates :retail_price, :sale_price, numericality: true
end
