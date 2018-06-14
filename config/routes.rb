Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  #  get '/products/:id/description', to: 'products#show'
  #  get '/products/:id/inventory', to: 'products#show'
end
