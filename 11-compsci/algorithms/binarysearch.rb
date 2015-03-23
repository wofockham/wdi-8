# Returns the index of the needle in elements OR nil
def binary_search(elements, needle)
  min = 0
  max = elements.length - 1
  candidate = nil

  # Run until all possibilities are exhausted...
  until min > max do
    mid = (min + max) / 2

    candidate = elements[mid]

    puts "min #{min}, mid #{mid}, max #{max}, candidate #{candidate}"

    if candidate < needle # Too low, focus on the right half
      min = mid + 1
    elsif candidate > needle # Too high, focus on the left half
      max = mid - 1
    else
      return mid # Magic
    end
  end

  return nil
end


# a = (0..100).map { Random.rand(500) }.sort

# p binary_search(a, a.sample)
