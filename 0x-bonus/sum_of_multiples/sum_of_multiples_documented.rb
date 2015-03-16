require 'pry'
class SumOfMultiples
  # We need to create this method so we can call it on the class SumOfMultiples (rather than an instance)
  # Within here, we actually create an instance and then call the method "to" (on the instance)
  # This is because we need to prepare for both instance calls and class Calls
  def self.to(number)
    new(3, 5).to(number)
  end

  def initialize(*multiples)
    # We use the splats parameter to turn whatever is passed into the new method into an array
    # The splat parameter can do a lot more than just that 
    # https://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/

    # Just declare an instance variable here
    @multiples = multiples
  end

  def to(number)
    # Create the array up to the number
    (1...number)
      .select { |n| multiple?(n) }
      .reduce(0, :+)
      # .reduce(0) { |sum, i| sum + i }
      # Select all numbers where the multiple method returns true

      # The point of reduce is to reduce an entire collection down to a single value
      # First parameter is the starting point
      # Second parameter is the method of combination
        # You can pass a block to this as well
        # But we are passing a shortcut that will add them all

  end

  private 
  def multiple?(number)
    # binding.pry
    # This will return false if none of the multiples are even divisors of the main number
    # Will return true if they are
    @multiples.any? { |multiple| number % multiple == 0 }
  end
end
SumOfMultiples.to(10)
