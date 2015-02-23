Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/events' => 'pages#events'
end
