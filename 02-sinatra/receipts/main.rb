require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :form
end

post '/' do
  db = File.open('receipts.csv', 'a+')
  db.puts params.values.join(',')
  db.close
  erb :thanks
end

get '/all' do
  db = File.open('receipts.csv', 'r')
  @receipts = []

  db.each do |line|
    info = line.split(',')
    receipt = {
      :client => info[0],
      :service => info[1],
      :cost => info[2]
    }
    @receipts << receipt
  end

  db.close
  erb :all
end
