require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDERR) # Show SQL in the terminal.

# Explains to ActiveRecord where to find the database.
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

# Include our models.
require_relative 'butterfly'
require_relative 'plant'

# Before filter runs before any and every request.
before do
  # The layout requires this variable to be set.
  @families = Butterfly.select(:family).uniq
end

# Ditto for the after filter.
after do
  # This stops the database running out of connections.
  ActiveRecord::Base.connection.close
end

# For debugging purposes: visit this URL and pry will open in the terminal.
get '/pry' do
  binding.pry
end

# Homepage.
get '/' do
  erb :home
end

# Butterflies index.
get '/butterflies' do
  @butterflies = Butterfly.all.order(:name)
  erb :index
end

# Butterflies within a single family.
get '/butterflies/family/:name' do
  @butterflies = Butterfly.where(:family => params[:name])
  erb :index # Same view as the index but only for a particular family.
end

get '/butterflies/new' do
  erb :new
end

# CREATE a new butterfly
post '/butterflies' do
  # Instantiate a new butterfly in memory, set its attributes
  # and save (persist) it to the database.
  butterfly = Butterfly.new
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]

  butterfly.save

  redirect to("/butterflies/#{ butterfly.id }") # Show the user the new butterfly.
end

# SHOW a butterfly
get '/butterflies/:id' do
  @butterfly = Butterfly.find params[:id] # The ID is in the URL.
  erb :show
end

# This is naughty, I was lazy, sorry: POST would be better.
get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id] # The ID is in the URL.
  butterfly.destroy # Delete the butterfly from the database.
  redirect to('/butterflies') # Return the user to the index.
end

get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  erb :edit
end

# UPDATE butterfly.
post '/butterflies/:id' do
  # Retrieve an existing butterfly, update its attributes and save (persist)
  # to the database.
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.save
  redirect to("/butterflies/#{ butterfly.id }")
end

get '/plants' do
  @plants = Plant.all.order(:name)
  erb :plants_index
end

get '/plants/new' do
  erb :plants_new
end

get '/plants/:id' do
  @plant = Plant.find params[:id]
  erb :plants_show
end

post '/plants' do
  Plant.create :name => params[:name], :image => params[:image]
  redirect to('/plants')
end

get '/plants/:id/delete' do
  plant = Plant.find params[:id]
  plant.destroy
  redirect to('/plants')
end

get '/plants/:id/edit' do
  @plant = Plant.find params[:id]
  erb :plants_edit
end

post '/plants/:id' do
  plant = Plant.find params[:id]
  plant.update :name => params[:name], :image => params[:image]
  redirect to("/plants/#{ plant.id }") # Return the user to the show page.
end


