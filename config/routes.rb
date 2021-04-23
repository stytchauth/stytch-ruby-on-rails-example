Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Login form
  get '/login', to: 'stytch#login'

  # Handle the login form submission
  post '/login', to: 'stytch#create'

  # Handle the redirect and validate the authentication token
  get '/authenticate', to: 'stytch#authenticate'
end
