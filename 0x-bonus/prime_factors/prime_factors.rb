class PrimeFactors
  # We had to prefix the method with self because we are calling the method on the class itself rather than an instance of a class
  def self.for( number )

    # Always create a starting point outside loops!
    factors = []
    divisor = 2

    # This is where we begin our seesaw type thing - Mario's ladder example is perfect for this. 
    # We only want to run these while loops while the number is greater than 1 (remember that number is changing within the inner while loop - line 16)
    while number > 1
      # If the number is cleanly divisible by the divisor, we enter this loop
      while number % divisor == 0
        # We alter number by dividing it by the divisor
        # This gets it closer to exiting the loop that begins on line 12
        number /= divisor
        # We then push the divisor into the factors array
        factors << divisor
      end
      # We need to increment the divisor as soon as we exit the inner loop
      divisor += 1
    end
    # We always need to return the factors array
    factors
  end
end

###########################
###########################
###### EXAMPLE RUNS #######
###########################
###########################

# If we pass in the number 4
# 1. We enter the loop on line 11
# 2. We then enter the loop on line 13 because the variable number (4) is divisible by the variable divisor (2)
# 3. Within the inner while loop we alter the variable number and change it to 2 (number /= divisor - line 16)
# 4. Because 2 is still divisible by 2, we run the inner while loop again
# 5. number /= divisor is equal to 2 divided by 2 in this case. We push in 2 into the factors array again
# 6. The result of number /= divisor is equal to 1 so we escape the both while loops
# 7. We then return factors

# If we pass in the number 12
# 1. We enter the loop on line 11
# 2. We then enter the loop on line 13 because the variable number (12) is divisible by the variable divisor (2)
# 3. Within the inner while loop we alter the variable number and change it to 6 (number /= divisor - line 16)
# 4. Because 6 is still divisible by 2, we run the inner while loop again
# 5. This results in number equalling 3 (which is no longer cleanly divisble by 2)
# 6. We escape the innermost while loop and add one to the divisor (number is 3, divisor is 3 at this point)
# 7. We then run the inner loop because 3 % 3 == 0
# 8. The result of result /= divisor is equal to one here so it then escapes both while loops