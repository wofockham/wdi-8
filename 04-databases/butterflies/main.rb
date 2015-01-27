require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require 'pry'

get '/' do
  erb :home
end

get '/butterflies' do
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true

  @butterflies = db.execute "SELECT * FROM butterflies"

  erb :index
end

get '/butterflies/:id' do
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true

  id = params[:id]

  @butterfly = db.execute "SELECT * FROM butterflies WHERE id = #{ id }"
  @butterfly = @butterfly.first

  erb :show
end
