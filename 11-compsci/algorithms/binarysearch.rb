a = (1..100).map { Random.rand(1000) }.sort

# Returns the index of the needle in elements OR nil
def binary_search(elements, needle)
  min = 0
  max = elements.length - 1
  target = nil

  # Run until all possibilities are exhausted...
  until min >= max do
    mid = min + max / 2
    puts "min: #{min}, max: #{max}, mid: #{mid}"

    target = elements[mid]
    return(mid) if target == needle # Found it! Index is in mid

    if target < needle # Too low, focus on the right half
      min = mid + 1
    elsif target > needle # Too high, focus on the left half
      max = mid - 1
    end
  end

  return nil
end

puts "passed!" if a.none? { |i| p "searching: #{i}"; binary_search(a, i).nil? }

require 'pry'
binding.pry

p binary_search(a, 200)
