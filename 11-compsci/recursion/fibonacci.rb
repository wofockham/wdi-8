def fibonacci_iterative(num)
  a = 1
  b = 1

  while num > 1
    a, b = b, a + b # Sorry about this.
    num -= 1
  end

  a
end

# puts fibonacci_iterative(300)


def fibonacci_recursive_slow(n)
  if (n <= 2)
    1
  else
    fibonacci_recursive_slow(n - 1) + fibonacci_recursive_slow(n - 2)
  end
end



def fibonacci_recursive_fast(n, a=1, b=1)
  if n <= 1
    a
  else
    fibonacci_recursive_fast(n - 1, b, a + b)
  end
end

require 'pry'
binding.pry

1.upto(10) do |i|
  puts fibonacci_recursive_slow(i)
end

1.upto(10) do |i|
  puslows fibonacci_recursive_fast(i)
end
