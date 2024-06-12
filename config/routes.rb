Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "about", to: "about#index"

  # the default rails page only works in development
  # will give you a 404 error if you try to use the app without a # route

  # get "/", to: "main#index"
  # create a main controller with an index action 
  # the / is optional and you can do get "", to...
  # can also do:
  root to: "main#index"
end
