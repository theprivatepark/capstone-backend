Rails.application.routes.draw do
  resources :clients
  resources :sessions
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
