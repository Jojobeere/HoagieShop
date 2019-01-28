Rails.application.routes.draw do
  get 'home/index'

  resources :hoagies

  root 'home#index'
end
