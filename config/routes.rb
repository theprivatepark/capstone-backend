Rails.application.routes.draw do
  resources :clients
  resources :events
  resources :admins

  post "/login", to: "admins#login", as: "login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
