class PagesController < ApplicationController

  def home
  end

  def numbers
    @amount = 234
    @large_number = 12341123123232137
    @phone = 2125551212 # US style phone number
  end

  def text
    @numbers = (1..20).to_a
    @person_count_a = 1
    @person_count_b = 2
    @story = "A very assessment long long long long long long time ago in a galaxy far far far away"
  end

  def assets
  end

  def url
  end

end
