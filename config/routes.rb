Rails.application.routes.draw do
  resources :twitters
   collection do
      post :confirm
   end
end
