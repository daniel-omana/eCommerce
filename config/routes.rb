Rails.application.routes.draw do
  get 'command/sale'
  get 'command/new'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: %i[index show]

  resources :products, only: %i[index show] do
    collection do
      get 'search'
    end
  end
  resources :manufacturers, only: %i[index show]

  root 'home#index'
end
