Rails.application.routes.draw do
  root "homepage#index"

  resource :session
  resources :passwords, param: :token
  resources :users
  resources :sidebar, only: :index

  get "up" => "rails/health#show", as: :rails_health_check
end
