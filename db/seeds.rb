# if Rails.env.development?
#   AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
# end

# NUMBER_OF_PRODUCTS_TO_CREATE = 90

10.times do
  category = Category.find(rand(1..4))
  manufacturer = Manufacturer.find(rand(1..6))
  product = category.products.create(name: Faker::Commerce.unique.product_name,
                                     description: "Color is #{Faker::Commerce.color} and " +
                                                  "this product is made out of #{Faker::Commerce.material}. " +
                                                  "Designed by: #{Faker::Artist.name}",
                                     retail_price: Faker::Number.decimal(l_digits: 2),
                                     quantity: Faker::Number.number(digits: 2),
                                     manufacturer_id: manufacturer.id)
  downloaded_image = URI.open("http://source.unsplash.com/200x200/?#{product.name}")
  product.image.attach(io: downloaded_image, filename: "m-#{product.name}.jpg")
end
