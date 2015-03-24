def factorial_iterative(num)
  product = 1
  while (num > 0)
    product = product * num
    num -= 1
  end

  product
end

# puts factorial_iterative(20)

def factorial_recursive_too_clever(num)
  num * ((num > 1) ? factorial_recursive_too_clever(num - 1) : 1)
end

puts factorial_recursive_too_clever(5)

def factorial_recursive(num)
  if (num <= 1)
    1
  else
    num * factorial_recursive(num - 1)
  end
end

puts factorial_recursive(5)
