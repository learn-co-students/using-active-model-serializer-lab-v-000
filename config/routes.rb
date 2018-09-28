Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  get '/products/:id/descriptio', to: 'products#description'
  get '/products/:id/inventor', to: 'products#inventory'
end
