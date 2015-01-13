# $ gem install rainbow
# require 'rainbow'

def read_choice
  puts "Welcome to Crappy Calc"
  puts "Available functions:"
  puts "1. Addition"
  puts "Q. Quit"

  print "Please enter your selection: "

  choice = gets.chomp.downcase
  choice
end

def add
  print "Enter the first number: "
  x = gets.to_i

  print "Enter the second number: "
  y = gets.to_i

  puts "#{x} + #{y} = #{x + y}"
end

menu_selection = read_choice

while menu_selection != 'q'
  case menu_selection
  when '1'
    add
  else
    puts "Unknown function"
  end

  menu_selection = read_choice
end

puts "Thank you for using Crappy Calc"
