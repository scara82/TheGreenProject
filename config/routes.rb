Rails.application.routes.draw do

  get '/home', to: 'pages#home'

  get '/index', to: 'pages#index'
  get '/kids', to: 'pages#kids'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  post '/tests/self', to: 'tests#self_test_result'
  post '/tests/home', to: 'tests#home_test_result'
  post '/tests/transp', to: 'tests#transp_test_result'
  post '/tests/prod', to: 'tests#prod_test_result'

  get 'tests/self_test_show/:id', to: 'tests#self_test_show'

  get '/scores/your_scores', to: 'scores#your_scores'

  root 'sessions#new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
