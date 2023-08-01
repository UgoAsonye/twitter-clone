Rails.application.routes.draw do
  get "/test" => "test#index"
  post "/users" => "users#create"
end
