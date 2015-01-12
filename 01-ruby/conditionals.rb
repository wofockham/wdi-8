# Boring examples
if true
  puts "It is true"
end

if false
  puts "It is false"
end

# Mathematical consistency
if (2 + 2 == 4)
  puts "Mathematics appears to be correct"
end

if (2 + 2 == 5)
  puts "Mathematics is broken"
end

if (3 + 3 == 9)
  puts "Mathematics is misbehaving"
else
  puts "Mathematics is A-OK"
end

name = 'craigsy'

if name == 'craigsy'
  puts "Hey there buddy"
  puts "It's good to see you"
  puts "You owe me $20"
else
  puts "Hi stranger"
end

password = 'swordfish'

unless password == 'swordfish'
  puts "You don't know the password"
else
  puts "Welcome to the speakeasy"
end

puts "You don't know the password" unless password == 'swordfish'
