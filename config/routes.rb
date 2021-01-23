Rails.application.routes.draw do
  # get 'messages/create'
  root "chatroom#index"
  get "login", to: 'sessions#new'
  post "login", to: 'sessions#create'
  post "message", to: "messages#create"
  delete "logout", to: "sessions#destroy"
end
