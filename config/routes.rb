Rails.application.routes.draw do
  resources :tweets
  resources :users
  resources :relationships
  get "/test" => "test#index"
  post "/users" => "users#create"
  get "/users" => "users#index"

  post "/tweets" => "tweets#create"
  get "/tweets" => "tweets#index"
end
