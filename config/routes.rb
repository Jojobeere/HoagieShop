Rails.application.routes.draw do
  get 'home/index'

  resources :bases
  resources :customers
  resources :hoagies
  resources :orders
  resources :reviews
  resources :comments

  root 'home#index'
end
