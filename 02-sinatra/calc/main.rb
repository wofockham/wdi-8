require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  @result = params[:x].to_f * params[:y].to_f
  erb :calc
end

get '/add/:x/:y' do
  @result = params[:x].to_f + params[:y].to_f
  erb :calc
end
