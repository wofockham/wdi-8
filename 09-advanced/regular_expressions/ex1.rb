# ruby lr.rb simpsons.txt

# Make a program that prints each line of its input that mentions fred. (It shouldn’t do anything for other lines of input.) Does it match if your input string is Fred, frederick, or Alfred? Make a small text file with a few lines mentioning "fred flintstone" and his friends, then use that file as input to this program and the ones later in this section.

ARGF.each do |line|
  puts line if line =~ /fred/
end
