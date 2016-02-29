Rails.application.routes.draw do

  root 'home#show'
  
  resources :users, only: [:new, :create, :show]
  # resources :links, only: [:new, :create, :show, :index]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#delete"
  get "/dashboard", to: "home#show"

  namespace :api do
    namespace :v1 do
      resources :links, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json }
    end
  end
end
