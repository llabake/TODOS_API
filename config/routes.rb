# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :todos do
    resources :items
  end
  post 'signup', to: 'users#create'
  post 'auth/login', to: 'authentication#authenticate'
end