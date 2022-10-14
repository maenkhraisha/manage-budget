Rails.application.routes.draw do

  devise_for :users
  resources :users

  resources :groups, only: [:index, :show, :new, :create] 
  resources :purchases, only: [:index, :show, :new, :create]
  
  root to: "home#index"
end

