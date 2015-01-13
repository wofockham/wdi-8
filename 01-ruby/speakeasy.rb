print "What is your age? "
age = gets.chomp.to_i

print "What is the password? "
password = gets.chomp

if age >= 18 && password == 'swordfish'
  puts 'Welcome to the speakeasy'
else
  puts 'This is a laundry mat'
end
