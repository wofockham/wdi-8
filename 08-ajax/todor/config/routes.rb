Rails.application.routes.draw do
  root :to => 'tasks#landing'
  resources :tasks
end
