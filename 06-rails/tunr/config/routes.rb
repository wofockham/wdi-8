Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/home' => 'pages#home'

  resources :users, :only => [:new, :create]
end
