Rails.application.routes.draw do
  get 'users/index'
  resources :addresses
  resources :citizens
  resources :counties
  resources :users, except: [:show, :destroy]

  get 'home/index'
  devise_for :users

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
