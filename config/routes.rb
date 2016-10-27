Rails.application.routes.draw do

  resources :users do
    resources :games do
      collection do
        post '/query', to: 'games#query', as: 'query'
      end
    end
  end

  resources :sessions, only: [:new, :create, :destroy]

  get '/unauthorized', to: 'users#unauthorized', as: 'unauthorized'

  root "users#index"
end
