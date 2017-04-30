Rails.application.routes.draw do

  get '/home', to: 'pages#home'

  get '/index', to: 'pages#index'

  get '/users/new', to: 'users#new'
  post '/users/', to: 'users#create'
  delete '/users', to: 'users#destroy'

  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  # get '/tests/self_test', to: 'tests#self_test'
  post '/tests/self', to: 'tests#self_test_result'
  post '/tests/home', to: 'tests#home_test_result'
  post '/tests/transp', to: 'tests#transp_test_result'
  post '/tests/prod', to: 'tests#prod_test_result'


  get 'tests/self_test_show/:id', to: 'tests#self_test_show'

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
