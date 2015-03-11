Rails.application.routes.draw do
  root :to => 'posts#landing'
  resources :posts
end
