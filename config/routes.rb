Rails.application.routes.draw do
  resources :bookings
  resources :likes
  resources :cars
  resources :listings
  resources :users
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
