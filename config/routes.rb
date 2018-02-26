Rails.application.routes.draw do
  resources :diets
  devise_for :users
  root 'diets#index'

end
