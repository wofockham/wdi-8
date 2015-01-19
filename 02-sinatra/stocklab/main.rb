require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :lookup
end

get '/lookup' do
  @symbol = params[:stock_symbol].upcase
  result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)
  @price = result[@symbol].lastTrade if result[@symbol]

  erb :lookup
end