Rails.application.routes.draw do
  resources :stamps
  resources :countries
  resources :years
  resources :subjects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end