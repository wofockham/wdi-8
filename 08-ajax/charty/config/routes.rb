Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/weather' => 'pages#weather'

  resources :temperatures, :only => [:index] do
    collection do
      get 'max'
      get 'min'
    end
  end

end
