Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/numbers' => 'pages#numbers'
  get '/contest' => 'pages#text', :as => 'text'
  get '/assets' => 'pages#assets'
  get '/url' => 'pages#url'
end
