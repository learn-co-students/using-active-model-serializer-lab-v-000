Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
end

# Get rid of the unused /products/id/description and /products/id/inventory routes.
