print "What is the temperature? "
temperature = gets.to_i

print "Is the A/C functional? (y/n) "
ac_functional = gets.chomp.downcase

print "What is the desired temperature? "
desired_temperature = gets.to_i

if ac_functional == 'y'
  if temperature > desired_temperature
    puts "Turn on the A/C please"
  end
else
  if temperature > desired_temperature
    puts "Fix the A/C now!  It's hot!"
  else
    puts "Fix the A/C whenever you have the chance...  It's cool..."
  end
end

