require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @groucho = 'excellent'
  @kitten = "http://cdn.desktopwallpapers4.me/media/thumbs_400x250/2/12118.jpg"

  @debug_mode = true

  erb :demo
end
