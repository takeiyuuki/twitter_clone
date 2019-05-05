Rails.application.routes.draw do
  resources :twitters do
    collection do
      post :confirm
      get :surface
      root to: 'twitters#surface'
    end
  end
end
