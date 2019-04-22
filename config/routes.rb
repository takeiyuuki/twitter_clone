Rails.application.routes.draw do
  resources :twitters do
    collection do
      post :confirm
    end
  end
end
