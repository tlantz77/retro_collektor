Rails.application.routes.draw do

  resources :users do
    resources :collections
  end

  resources :sessions, only: [:new, :create, :destroy]

  root "users#index"
end
