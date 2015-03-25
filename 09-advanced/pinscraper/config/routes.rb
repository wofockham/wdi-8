Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/search' => 'pages#search'
end
