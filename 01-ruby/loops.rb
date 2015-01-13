# Dreaded infinite loop example.
# while true
#   puts "Still running"
# end

# puts "Goodbye"


count = 10
while count > 0
  puts "Counting down: #{ count }"
  count -= 1
end

puts "Blastoff!"

count = 10
until count == 0
  puts "Counting down: #{ count }"
  count -= 1
end

puts "Blastoff again!"
