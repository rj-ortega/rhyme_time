Rails.application.routes.draw do
  get "/", to: redirect("/users")
  resources :words, only: [:new, :destroy, :index, :create]
  resources :users, only: [:index, :create, :show, :destroy]
  resources :poems
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
