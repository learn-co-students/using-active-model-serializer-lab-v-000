Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders, only: [:show, :index]
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
end
