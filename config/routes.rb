# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contacts
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
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
  resources :favorites, only: %i[create destroy]
end
