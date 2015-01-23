db = File.new('database.txt', 'a+')

print "Would you like to add someone to the database? (y/n) "
response = gets.chomp.downcase

while response == 'y'
  print "Enter name, age, gender: "
  person = gets.chomp

  db.puts person

  print "Would you like to add someone to the database? (y/n) "
  response = gets.chomp.downcase
end

db.close
