Rails.application.routes.draw do
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

  resources :cart, only: %i[create destroy index] do
    collection do
      get 'display'
    end
  end

  resources :pages, except: [:show]
  get '/pages/:permalink' => 'pages#permalink', as: :permalink

  root 'home#index'
end
