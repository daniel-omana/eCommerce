ActiveAdmin.register Product do
  permit_params :name, :description, :retail_price, :sale_price, :quantity, :manufacturer_id, :category_id
end
