Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  # get 'static_pages/home'
 
  
  # routes a GET request for the URL /help to the help action in the 
  # Static Pages controller
  get 'help',     to: 'static_pages#help'
  get 'about',    to: 'static_pages#about'
  get 'contact',  to: 'static_pages#contact'
  get 'signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users # RESTful Users resource and routes for generating user URLs
  


end
