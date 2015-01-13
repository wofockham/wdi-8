print "What upper bound would you like to play with?: "
MAX_GUESS = gets.to_i

# +1 to go up to AND INCLUDING the MAX_GUESS
secret_number = Random.rand(MAX_GUESS + 1)

print "Enter your guess (between 0 and #{ MAX_GUESS }): "
guess = gets.to_i

until guess == secret_number

  if guess > secret_number
    puts "Guess lower"
  else
    puts "Guess higher"
  end

  print "Enter your guess (between 0 and #{ MAX_GUESS }): "

  guess = gets.to_i
end

puts "Congratulations, you got it"
