Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get 'static_pages/help'
  
  # Tells Rails to route a GET request for the URL /static_pages/about 
  # to the about action in the Static Pages controller. This automatically 
  # creates a helper called: static_pages_about_url
  get 'static_pages/about' 
  
  get 'static_pages/contact'
  


end
