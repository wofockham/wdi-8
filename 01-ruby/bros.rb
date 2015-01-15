instrument = {
  :groucho => 'guitar',
  :harpo => 'harp',
  :chico => 'piano'
}

vice = {
  :groucho => 'cigars',
  :harpo => 'hijinx',
  :chico => 'booze'
}

# Prints out each brother and the instrument they play.
def plays(h)
  h.each do |bros, inst|
    puts "#{bros.to_s.capitalize} Marx plays the #{inst}."
  end
end

plays(instrument)

puts "=" * 80

def enjoys(h)
  h.each do |bros, naughty_thing|
    puts "#{bros.to_s.capitalize} Marx enjoys #{naughty_thing}."
  end
end

enjoys(vice)

plays = {
  :comedies => ['Midsummer', 'Much Ado'],
  :tragedies => ['Hamlet', 'Macbeth']
}

###############################################################################

class MarxBrother
  attr_accessor :name, :instrument, :vice

  def initialize(name, instrument, vice)
    @name = name
    @instrument = instrument
    @vice = vice
  end

  def play
    "#{ @name } Marx plays the #{ @instrument }."
  end

  def enjoy
    "#{ @name } Marx enjoys #{ @vice }."
  end
end

groucho = MarxBrother.new('Groucho', 'guitar', 'cigars')

require 'pry'
binding.pry



