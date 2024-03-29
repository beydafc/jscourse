Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root "pages#home"

  get "svg", to: "pages#svg", as: :svg
  get "tables", to: "pages#tables", as: :tables
  get "tables2", to: "pages#tables2", as: :tables2
  get "default", to: "pages#default", as: :default
  get "units", to: "pages#units", as: :units
  get "tstyles", to: "pages#tstyles", as: :tstyles

end
