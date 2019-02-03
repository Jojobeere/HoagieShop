Rails.application.routes.draw do
  get 'home/index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :bases
  resources :customers
  resources :hoagies
  resources :orders
  resources :reviews

  resources :reviews do
    resources :comments
  end

  root 'home#index'
end
