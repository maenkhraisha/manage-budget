# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :groups, only: %i[index show new create]
  resources :purchases, only: %i[index show new create]

  root to: 'home#index'
end
