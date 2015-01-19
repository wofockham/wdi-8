require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "The result is #{ result }"
end
