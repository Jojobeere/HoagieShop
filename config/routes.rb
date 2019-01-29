Rails.application.routes.draw do
  get 'home/index'

  resources :hoagies
  resources :bases

  root 'home#index'
end
