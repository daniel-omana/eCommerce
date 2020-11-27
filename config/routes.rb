Rails.application.routes.draw do
  get 'order_items/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: %i[index show]
  resources :command, only: %i[sale new]
  resources :products, only: %i[index show] do
    collection do
      get 'search'
      get 'new_arivals'
      get 'sale'
    end
  end
  resources :manufacturers, only: %i[index show]
  root 'home#index'
end
