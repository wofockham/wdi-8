require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/bros' do
  %w{Gummo}.sample
end

get '/lotto' do
  Random.rand(1..40).to_s
end

get '/slow' do
  sleep 10
  "<i>haha</i>" * Random.rand(1..10)
end
