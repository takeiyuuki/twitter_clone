Rails.application.routes.draw do
  resources :twitters do
    collection do
      post :confirm
      get :surface
    end
  end
end
