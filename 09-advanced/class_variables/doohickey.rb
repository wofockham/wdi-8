class Doohickey
  @@count = 0

  attr_reader :colour

  def self.count # Class method, not an instance method
    @@count
  end

  def initialize(colour)
    @@count += 1
    @colour = colour
  end
end

d1 = Doohickey.new 'purple'
d2 = Doohickey.new 'green'

require 'pry'
binding.pry
