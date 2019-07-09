Rails.application.routes.draw do
  resources :words
  resources :users
  resources :haikus

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
