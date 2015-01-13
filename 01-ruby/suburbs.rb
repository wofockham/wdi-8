# - Create a program that asks what suburbs you live in.
# - Depending on the answer, print an appropriate response of your choosing

print "Which suburb do you live in? "
suburb = gets.chomp.downcase

if suburb == 'chatswood' || suburb == 'newtown'
  puts "Good nomming"
elsif suburb == 'palm beach' || suburb == 'avalon'
  puts "Long commute buddy"
else
  puts "I'm sure that's a very nice place"
end

