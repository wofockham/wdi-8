require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :index
end

get '/bros' do
  %w{Groucho Harpo Chico Gummo}.sample
end

get '/lotto' do
  Random.rand(1..40).to_s
end

get '/slow' do
  sleep 10
  "<i>haha</i>" * Random.rand(1..10)
end

get '/getjson' do
  content_type :json
  content = {
    :status => 'hunky dory',
    :luckyNumber => Random.rand(1..1000),
    :currentTime => Time.now
  }
  content.to_json
end
