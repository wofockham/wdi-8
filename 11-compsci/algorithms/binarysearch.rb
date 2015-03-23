a = (1..100).map { Random.rand(1000) }.sort

# Returns the index of the needle in elements OR nil
def binary_search(elements, needle)
  min = 0
  max = elements.length - 1
  target = nil

  # Run until all possibilities are exhausted...
  until (max - min) < 2 do
    mid = (min + max) / 2
    puts "min: #{min}, max: #{max}, mid: #{mid}"

    target = elements[mid]
    return(mid) if target == needle # Found it! Index is in mid

    if target < needle # Too low, focus on the right half
      min = mid
    elsif target > needle # Too high, focus on the left half
      max = mid
    end
  end

  return nil
end

require 'pry'
binding.pry

p binary_search(a, 200)
