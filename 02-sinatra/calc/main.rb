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

get '/calc' do
  @first = params[:first].to_f
  @second = params[:second].to_f

  @result = case params[:operator]
  when '+' then @first + @second
  when '-' then @first - @second
  when '*' then @first * @second
  when '/' then @first / @second
  end

  erb :calc
end
