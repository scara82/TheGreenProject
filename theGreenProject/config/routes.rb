Rails.application.routes.draw do

  get '/home', to: 'pages#home'

  get '/index', to: 'pages#index'

  get '/users/new', to: 'users#new'
  post '/users/', to: 'users#create'
  delete '/users', to: 'users#destroy'

  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/points/test_self', to: 'points#test_self'
  post '/points/', to: 'points#test_self_result'

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
