require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDERR) # Show SQL in the terminal.

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

require_relative 'butterfly'

before do
  @families = Butterfly.select(:family).uniq
end

after do
  ActiveRecord::Base.connection.close
end

# For debugging purposes: visit this URL and pry will open in the terminal.
get '/pry' do
  binding.pry
end

get '/' do
  erb :home
end

get '/butterflies' do
  @butterflies = Butterfly.order(:name)
  erb :index
end

get '/butterflies/family/:name' do
  @butterflies = Butterfly.where(:family => params[:name])
  erb :index
end

get '/butterflies/new' do
  erb :new
end

post '/butterflies' do
  butterfly = Butterfly.new
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]

  butterfly.save

  redirect to('/butterflies')
end

get '/butterflies/:id' do
  @butterfly = Butterfly.find params[:id]
  erb :show
end

get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to('/butterflies')
end

get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  erb :edit
end

post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.save
  redirect to("/butterflies/#{ butterfly.id }")
end


