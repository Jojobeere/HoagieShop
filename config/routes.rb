Rails.application.routes.draw do
  get 'home/index'

  resources :bases
  resources :customers
  resources :hoagies

  root 'home#index'
end
