# ruby lr.rb simpsons.txt

ARGF.each do |line|
  puts line if line =~ /a/
end
