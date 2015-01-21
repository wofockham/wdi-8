require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :forms
end

get '/process' do
  erb :result
end