Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    ###USER ROUTES
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    ###POSTION ROUTES
    get "/positions" => "positions#index"
    post "/positions" => "positions#create"
    get "/positions/:id" => "positions#show"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"
  end
end
