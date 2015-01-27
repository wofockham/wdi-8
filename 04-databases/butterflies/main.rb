require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require 'pry'

get '/' do
  erb :home
end

