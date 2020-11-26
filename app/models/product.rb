class Product < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category

  validates :name, :description, :retail_price, :quantity, presence: true
  validates :name, uniqueness: true
  validates :quantity, numericality: { only_integer: true }
  validates :retail_price, numericality: true

  has_one_attached :image

  paginates_per 10
end
