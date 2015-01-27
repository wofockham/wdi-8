require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require 'pry'

before do
  @families = db_query("SELECT DISTINCT(family) FROM butterflies")
end

get '/' do
  erb :home
end

get '/butterflies' do
  @butterflies = db_query("SELECT * FROM butterflies")
  erb :index
end

get '/butterflies/family/:name' do
  @butterflies = db_query("SELECT * FROM butterflies WHERE family='#{params[:name]}'")
  erb :index
end

get '/butterflies/new' do
  erb :new
end

post '/butterflies' do
  query = "INSERT INTO butterflies (name, family, image)
           VALUES ('#{params["name"]}', '#{params["family"]}',
                   '#{params["image"]}')"

  db_query(query)

  redirect to('/butterflies')
end

get '/butterflies/:id' do
  id = params[:id]

  @butterfly = db_query("SELECT * FROM butterflies WHERE id = #{ id }")
  @butterfly = @butterfly.first

  erb :show
end

get '/butterflies/:id/delete' do
  id = params[:id]

  db_query("DELETE FROM butterflies WHERE id = #{ id }")

  redirect to('/butterflies')
end

get '/butterflies/:id/edit' do
  id = params[:id]

  @butterfly = db_query("SELECT * FROM butterflies WHERE id = #{ id }").first

  erb :edit
end

post '/butterflies/:id' do
  id = params[:id]

  query = "UPDATE butterflies SET name='#{params["name"]}', family='#{params["family"]}', image='#{params["image"]}' WHERE id = #{id}"

  db_query(query)

  redirect to('/butterflies/' + id)
end

def db_query(sql)
  db = SQLite3::Database.new "butterflies.db"
  db.results_as_hash = true

  result = db.execute sql

  db.close
  result
end

