Rails.application.routes.draw do

  get "/movies", to: "movies#index"

  get "/movies/:id", to: "movies#show", as: :movie

  get "/actors", to: "actors#index"

  get "/actors/:id", to: "actors#show", as: :actor

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
