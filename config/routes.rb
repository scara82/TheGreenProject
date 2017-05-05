Rails.application.routes.draw do

  get '/login', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  # get '/home', to: 'pages#home'
  #
  # get '/index', to: 'pages#index'

  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  post '/tests/self', to: 'tests#self_test_result'
  post '/tests/home', to: 'tests#home_test_result'
  post '/tests/transp', to: 'tests#transp_test_result'
  post '/tests/prod', to: 'tests#prod_test_result'

  get 'tests/self_test_show/:id', to: 'tests#self_test_show'

  get '/scores/your_scores', to: 'scores#your_scores'

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
