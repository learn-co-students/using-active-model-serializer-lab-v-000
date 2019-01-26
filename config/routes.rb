Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices
  resources :products, only: [:show, :index, :new, :create]

  class OnlyAjaxRequest
    def matches?(request)
      request.xhr?
    end
  end
  
  get 'posts/filter/:by_attribute/:value' => 'posts#filter', :constraints => OnlyAjaxRequest.new

  get '/products/:id/description', to: 'products#description'
  get '/products/:id/inventory', to: 'products#inventory'
end
