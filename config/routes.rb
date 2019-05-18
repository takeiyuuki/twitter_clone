# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'twitters#surface'
  resources :twitters do
    collection do
      post :confirm
      get :surface
    end
  end

  resources :users, only: %i[new create]
end
