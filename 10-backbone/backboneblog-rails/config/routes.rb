Rails.application.routes.draw do
  root :to => 'posts#landing'
  resources :posts do
    resources :comments
  end
end
