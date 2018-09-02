Rails.application.routes.draw do
  post 'purchases/create'
  resources :products
  devise_for :users
  get 'home/index'
  get 'home/purchases'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
