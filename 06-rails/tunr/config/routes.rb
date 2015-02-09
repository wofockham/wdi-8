Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/about' => 'pages#about'

  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
