print "What is your age? "
age = gets.chomp.to_i # This will be 0 if the user enters non-numeric text.

if age < 18
  puts "An appropriate message"
else
  puts "A different message"
end
