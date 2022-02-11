Rails.application.routes.draw do
  get 'private/test'
  post "/login", to: "users#login"
  get 'current_user', to: 'current_user#index'
  get 'user_attributes/unique' => 'user_attributes#unique'
  resources :user_attributes
  resources :quizzes
  resources :quiz_questions
  resources :quiz_answers
  resources :messages
  resources :answer_attributes
  resources :users
  # resources :reviews
  # resources :companies

  # post "/signup", to: "users#create"
  # post "/login", to: "users#login"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
