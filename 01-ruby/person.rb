class Person
  attr_accessor :age, :gender, :name

  def initialize(age, gender, name)
    @age = age
    @gender = gender
    @name = name
  end

  def to_s
    "#{ @name } is a #{ @age } year old who identifies as #{ @gender }."
  end
end

require 'pry'
binding.pry
