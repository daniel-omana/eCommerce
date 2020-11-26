Rails.application.routes.draw do
  get 'home/index'
  get 'products/index'
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  get 'manufacturers/index'
  get 'manufacturers/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
