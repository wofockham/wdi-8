# ruby matcher.rb simpsons.txt

ARGF.each do |line|
  if (match = line =~ /a/)
    puts "Before match: #{ $` }"
    puts "Match: #{ $& }"
    puts "After match: #{ $' }"
  end
end
