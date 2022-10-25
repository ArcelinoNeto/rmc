Rails.application.routes.draw do
  resources :adresses
  resources :citizens
  resources :counties
  get 'home/index'
  devise_for :users

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
