Rails.application.routes.draw do
  root 'pages#home'
  resources :addresses
  devise_for :users
  resources :orderproducts
  resources :products
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
