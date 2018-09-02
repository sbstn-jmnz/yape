Rails.application.routes.draw do
  post 'purchases/create'
  resources :products
  devise_for :users
  resources :users, only: [:index, :show]
  get 'home/index'
  get 'home/purchases'
  get 'home/sales'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
