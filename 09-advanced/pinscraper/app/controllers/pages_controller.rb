require 'open-uri'

class PagesController < ApplicationController
  def index
  end

  def search
    unless params[:query].present?
      redirect_to root_path
    end

    url = "https://pinterest.com/search/?q=#{ params[:query] }"
    doc = Nokogiri::HTML(open(url))
    images = doc.css('img')

    @image_urls = images.map { |i| i.get_attribute('src') }
  end
end
