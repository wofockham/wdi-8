require 'sinatra'
require 'sinatra/reloader'

get '/hello' do
  "Hello world from Sinatra"
end

get '/help' do
  "Hello World"
end

get '/joel' do
  "Hello Joel, have a nice day (you stupid jerk)"
end

get '/greeting/:name' do
  "Hello " + params[:name].swapcase
end

get '/greeting/:first/:last' do
  "Hello there Mr or Ms #{ params[:first] } #{ params[:last].upcase }"
end

get '/greeting/:first/:last/:age' do
  "#{ params[:first] } is #{ params[:age] } years old"
end

get '/multiply/:x/:y' do
  result = params[:x] * params[:y]
  "The result is #{ result }"
end



