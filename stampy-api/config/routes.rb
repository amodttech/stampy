Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

resources :users, only: [:index, :create, :show]
resources :collections, only: [:index, :show, :create, :update, :destroy]
resources :stamps, only: [:index, :show, :create, :update, :destroy]

get '/signup', to: 'users#new'
get '/login', to: 'sessions#new'
post "/sessions", to: "sessions#create"
delete "/sessions", to: "sessions#destroy"

end
