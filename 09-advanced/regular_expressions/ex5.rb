# ruby lr.rb simpsons.txt

# Make a program that prints each line that has a two of the same nonwhitespace characters next to each other. It should match lines that contain words such as Mississippi, Bamm-Bamm, or llama.

ARGF.each do |line|
  puts line if line =~ /([A-Za-z])\1/
end
