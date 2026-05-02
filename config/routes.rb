Rails.application.routes.draw do
  root "homepage#index"

  resource :session
  resources :passwords, param: :token
  resources :users

  get "up" => "rails/health#show", as: :rails_health_check
end
