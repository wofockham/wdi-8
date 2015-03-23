# There are examples down the bottom!
class Trinary
  def initialize( number )
    @number = number
  end

  def to_decimal
    # We want to return zero if the number contains something other than 0's, 1's and 2's.
    # The =~ is a fuzzy match - meaning that it doesn't return any match data, it just returns nil if there are no matches (if there are matches - it returns the index of the first match)
    # This uses a negated character class...  It will match anything that is not 0, 1, or 2
    # http://www.regular-expressions.info/charclass.html
    return 0 if @number =~ /[^012]/

    # We break the string number into an array of it's characters.
    # The aim of the reduce method is to reduce the collection to a single value
    # Normally you would also pass in a symbol (:+ etc.), but you can pass a block. The zero value is the starting point - if you don't provide a starting point - the starting point will be nil
    # When you pass in a block, the sum is whatever the result of the last block was (which is quite weird) but because we have passed in sum we have access to the last block's result (or zero if it is the first iteration)
    @number.chars.reduce(0) do |sum, current|
      ( sum * 3 ) + current.to_i
    end
  end
end

# In the case of 112...

# [1, 1, 2].reduce(0) do |sum, current|
#   ( sum * 3 ) + current.to_i
# end

# FIRST ITERATION

# sum = 0 (from the starting point passed into the reduce method)
# current = 1 (the first character in the array)

# do |0, 1|
#   ( 0 * 3 ) + 1 
#   # (results in 1)
# end

# The result of the last block is set to sum...
# sum = 1
# current = 1

# do |1, 1|
#   ( 1 * 3 ) + 1
#   # (results in 4)
# end

# The result of the last block is set to sum...
# sum = 4
# current = 2

# do |4, 2|
#   ( 4 * 3 ) + 2
#   # (results in 14)
# end

# Because the aim of the reduce method is to reduce it to a single value, it returns the last sum (i.e. the result of the last block).