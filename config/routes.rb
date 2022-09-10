Rails.application.routes.draw do
  resources :users 
  get '/messages/by-users/:user1/:user2', to: 'messages#indexByUsers'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
