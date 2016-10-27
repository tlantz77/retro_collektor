Rails.application.routes.draw do

  resources :users do
    resources :games
  end

  resources :sessions, only: [:new, :create, :destroy]

  get '/query', to: 'games#query', as: 'query'

  get '/unauthorized', to: 'users#unauthorized', as: 'unauthorized'

  root "users#index"
end
