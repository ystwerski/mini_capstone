Rails.application.routes.draw do
  devise_for :users
get "/" => "products#index1"
get "/products" => "products#index"

get "/products/new" => "products#new"

get "/random" => "products#show"

post "/products" => "products#create"

get "/products/:id" => "products#show"

get "products/:id/edit" => "products#edit"

patch "products/:id" => "products#update"

delete "products/:id" => "products#destroy"

post "/orders" => "orders#create"

get "/orders" => "orders#index"

delete "/orders/:id" => "orders#destroy"

post "/purchases" => "purchases#create"
end
