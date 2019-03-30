Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  get '/products/description', to: 'products#description'
  get '/products/inventory', to: 'products#inventory'
end
