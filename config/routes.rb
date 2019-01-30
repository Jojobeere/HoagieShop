Rails.application.routes.draw do
  get 'home/index'

  resources :bases
  resources :customers
  resources :hoagies
  resources :orders

  root 'home#index'
end
