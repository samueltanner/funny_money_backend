Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    ###USER ROUTES
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    ###POSTION ROUTES
    get "/positions" => "positions#index"
    post "/positions" => "positions#create"
    get "/positions/:id" => "positions#show"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"

    ###TRANSACTION ROUTES
    get "/transactions" => "transactions#index"
    post "/transactions" => "transactions#create"
    get "/transactions/:id" => "transactions#show"
    patch "/transactions/:id" => "transactions#update"
    delete "/transactions/:id" => "transactions#destroy"

    ###GROUP ROUTES

    get "/groups" => "groups#index"
    post "/groups" => "groups#create"
    get "/groups/:id" => "groups#show"
  end
end
