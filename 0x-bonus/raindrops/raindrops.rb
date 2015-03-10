# README - https://gist.github.com/anonymous-wolf/89c0abb1dae801d7cab9
# TESTS - https://gist.github.com/anonymous-wolf/a91806ceea2980308751

class Raindrops
  def convert( value )
    # Unless one of these is true, just return the string version of the value
    unless value % 3 == 0 || value % 5 == 0 || value % 7 == 0
      # We need to explicitly return the value.to_s because it isn't the final line of the method (normally the last line is implicitly returned in ruby)
      return value.to_s
    end

    string = ""
    # Just the same as we can push elements into an array, we can push characters at the end of the string - pretty helpful.
    string << "Pling" if value % 3 == 0
    string << "Plang" if value % 5 == 0
    string << "Plong" if value % 7 == 0
    string
  end
end

# REFACTORED VERSION BELOW! 
# I prefer this because they are short, clean, private methods but eh, as long as it is readable...

# class Raindrops
#   def convert( value )
#     unless test_modulus_zero( value, 3 ) || test_modulus_zero( value, 5 ) || test_modulus_zero( value, 7 )
#       return value.to_s
#     end
#     sort_string( value )
#   end

#   private
#   def sort_string( value )
#     string = ""
#     string << "Pling" if test_modulus_zero( value, 3 )
#     string << "Plang" if test_modulus_zero( value, 5 )
#     string << "Plong" if test_modulus_zero( value, 7 )
#     string
#   end
#   def test_modulus_zero( value, divisor )
#     value % divisor == 0
#   end
# end