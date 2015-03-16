# ruby lr.rb simpsons.txt

# Make a program that prints each line of its input that contains a period (.), ignoring other lines of input. Try it on the small text file from the previous exercise: does it notice Mr. Slate?

ARGF.each do |line|
  puts line if line =~ /\./
end
