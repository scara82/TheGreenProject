Rails.application.routes.draw do

  get '/home', to: 'pages#home'

  get '/index', to: 'pages#index'

  get '/users/new', to: 'users#new'
  post '/users/', to: 'users#create'
  delete '/users', to: 'users#destroy'

  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/tests/test_self', to: 'tests#test_self'
  post '/tests/', to: 'tests#test_self_result'
  get 'tests/test_self_tot', to: 'tests#test_self_tot'

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
