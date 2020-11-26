# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

# NUMBER_OF_PRODUCTS_TO_CREATE = 90

# NUMBER_OF_PRODUCTS_TO_CREATE.times do
#   category = Category.find(rand(1..4))
#   manufacturer = Manufacturer.find(rand(1..6))
#   category.products.create(name: Faker::Commerce.unique.product_name,
#                            description: "Color: #{Faker::Commerce.color}\n" +
#                               "This product is made out of #{Faker::Commerce.material}\n" +
#                               "Designed by: #{Faker::Artist.name}",
#                            retail_price: Faker::Number.decimal(l_digits: 2),
#                            quantity: Faker::Number.number(digits: 2),
#                            manufacturer_id: manufacturer.id)
# end
