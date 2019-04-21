Rails.application.routes.draw do
  get '/twitters', to: 'twitters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
