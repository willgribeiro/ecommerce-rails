Rails.application.routes.draw do
  root "main#index"

  get "signup", to: "registrations#new" # rubocop:disable Style/StringLiterals
  post "signup", to: "registrations#create" # rubocop:disable Style/StringLiterals
  get "users", to: "registrations#show"
end
