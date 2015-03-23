def bubble_sort(elements)
  # Your bubble sort algorithm goes here.
  n = elements.length - 2
  n.downto(1) do |terminator|
    for i in (0..terminator) do
      if (elements[i] > elements[i + 1])
        elements[i], elements[i + 1] = elements[i + 1], elements[i] # Swap
      end
    end
  end
  elements
end

# Generate a randomly shuffled array.
a = (1..100).to_a.shuffle

p a # Show the unsorted array
p bubble_sort(a) # Show the sorted array
