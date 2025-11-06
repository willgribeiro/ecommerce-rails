Rails.application.routes.draw do
  root "main#index"

  # Password routes
  get "password", to: "passwords#edit", as: "edit_password"
  patch "password", to: "passwords#update"
  
  # Registration routes
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"
  get "users", to: "registrations#show"


  # Sessions routes
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Products routes
  #get "products", to: "products#index"
  post "products", to: "products#create"
  get "products/new", to: "products#new"
  get "products/:id", to: "products#show"

#resources :products
end
