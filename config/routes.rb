Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/customers/missing_email'
  get '/customers/alphabetized'

  resources :customers, only: [:index, :missing_email, :alphabetized]

  # Defines the root path route ("/")
  root "customers#index"
end
