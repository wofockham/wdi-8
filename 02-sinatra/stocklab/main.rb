require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :lookup
end
