Rails.application.routes.draw do
  root :to => 'tasks#landing'
  resources :tasks
  post '/tasks/:id/completed' => 'tasks#toggle_completed'
end
