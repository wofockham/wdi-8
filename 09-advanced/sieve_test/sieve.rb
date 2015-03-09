class Sieve
  # No real need for this, just a way to make sure you can access the limit from the instance of the class - i.e. outside of the class
  attr_reader :limit
  def initialize( limit )
    @limit = limit
  end

  # All this does is return the result of calculate_primes, I wanted all of my "business" logic hidden away in private methods
  def primes
    calculate_primes
  end

  private
  def calculate_primes
    # Create the numbers array (from 2 to whatever the end is)
    numbers = (2..limit).to_a
    primes = []

    # Begins are a great way of making sure something runs once because the condition is at the end.
      # If there is no condition on the end - it will only run once
      # Otherwise it will run just like a while loop
      # It is commonly used with an until or while loop
      # Really good at dealing with errors because you can add rescue blocks within there
      # Pretty good explanation - http://blog.rubybestpractices.com/posts/rklemme/003-The_Universe_between_begin_and_end.html
    begin

      # Take the first number out of the numbers array
      target = numbers.shift
      # Assume the shifted number is a prime
      primes << target
      # Go through the numbers array and reject anything that is cleanly divisible by the shifted value (target)
      numbers.reject! do |i|
        i % target == 0
      end
      # Keep running this until numbers is empty
    end until numbers.empty?
    # Return the primes array
    primes
  end
end