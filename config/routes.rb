Rails.application.routes.draw do
  resources :weights
  resources :diet_fields
  resources :diets
  devise_for :users
  root 'diets#index'

end
