class PagesController < ApplicationController
  def home
  end

  def numbers
    @amount = 234
    @large_number = 12341123123232137
    @phone = 2125551212 # US style phone number
  end

  def text
  end

  def assets
  end

  def url
  end
end
