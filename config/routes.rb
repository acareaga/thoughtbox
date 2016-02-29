Rails.application.routes.draw do

  root 'home#index'
  resources :users, only: [:new, :create, :show]
  # resources :links, only: [:index]

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#delete"
  # get "/dashboard", to: "users#dashboard"

end
