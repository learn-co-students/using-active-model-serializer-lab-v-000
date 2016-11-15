Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders, only: [:index, :show]
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
end
