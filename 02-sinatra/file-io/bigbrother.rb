db = File.new('database.txt', 'a+')

print "Would you like to add someone to the database? (y/n) "
response = gets.chomp.downcase

while response == 'y'
  print "Enter name, age, gender: "
  db.puts gets.chomp

  print "Would you like to add someone to the database? (y/n) "
  response = gets.chomp.downcase
end

db.close

## End of database add section

class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name, @age, @gender = name, age, gender
  end

  def to_s
    "#{name} is #{age} years old and #{gender}."
  end
end

## Beginning of database read section

db = File.open('database.txt', 'r')
people = []

db.each do |line|
  info = line.chomp.split /[, ]+/ # Regular expression.
  person = Person.new info[0], info[1], info[2] # Splat this.

  people << person
end

db.close

people.each do |p|
  puts p.to_s
end

require 'pry'
binding.pry





