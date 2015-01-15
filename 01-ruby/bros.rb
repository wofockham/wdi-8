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

require 'pry'
binding.pry



