Rails.application.routes.draw do
  get 'home/index'

  resources :bases
  resources :customers
  resources :hoagies
  resources :orders

  resources :reviews do
    resources :comments
  end

  root 'home#index'
end
