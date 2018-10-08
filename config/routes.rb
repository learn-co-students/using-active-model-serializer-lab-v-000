Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]
  resources :products, only: [:show] do
    resources :orders, only: [:show, :index]
  end
end
