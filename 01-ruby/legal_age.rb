print "What is your age? "
age = gets.chomp.to_i # This will be 0 if the user enters non-numeric text.

def can_drink(current_age)
  if current_age < 18
    puts "No drinks for you"
  else
    puts "Have a drink"
  end
end

can_drink(age)
