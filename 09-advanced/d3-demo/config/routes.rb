Rails.application.routes.draw do
  get '/circles' => 'pages#circles'
  get '/barchart' => 'pages#barchart'
end