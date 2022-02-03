Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :reviews
  resources :companies

  post "/signup", to: "users#create"
  post "/login", to: "users#login"

  # will need this later after
  # post "/follow", to: "user_relations#follow"

  # post "/subscribe", to: "user_subscriptions#create"

  # get "/random", to: "podcasts#random"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
