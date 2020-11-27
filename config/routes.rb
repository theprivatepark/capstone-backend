Rails.application.routes.draw do
  resources :clients
  resources :events
  resources :admins
  resources :images

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
