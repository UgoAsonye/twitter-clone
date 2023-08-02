Rails.application.routes.draw do
  resources :tweets
  resources :users
  resources :relationships

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/users" => "users#index"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/tweets" => "tweets#create"
  get "/tweets" => "tweets#index"
end
