Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/demo' => 'pages#demo'
end
