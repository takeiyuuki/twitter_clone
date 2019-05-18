# frozen_string_literal: true

Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'twitters#surface'
  resources :twitters do
    collection do
      post :confirm
      get :surface
    end
  end
  resources :sessions, only: %i[new create destroy]
  resources :users
end
