Rails.application.routes.draw do
  # Static pages in my pages controller:
  root :to => 'pages#home'
  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/cute' => 'pages#cute'

  # CRUD for butterflies:
  get '/butterflies' => 'butterflies#index'
  get '/butterflies/new' => 'butterflies#new'
  get '/butterflies/faq' => 'butterflies#faq'

  get '/auto/:colour' => 'auto#colour'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:y/:operator' => 'calc#calculate'
end
