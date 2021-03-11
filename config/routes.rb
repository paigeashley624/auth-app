Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #USER
    get "/users/:id", controller: "users", action: "show"
    post "/users", controller: "users", action: "create"

    #SESSION
    post "/sessions", controller: "sessions", action: "create"
  end
end
