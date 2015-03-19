# ruby matcher.rb simpsons.txt

ARGF.each do |line|
  if (match = line =~ /match/)
    puts "Before match: #{ $` }"
    puts "Match: #{ $& }"
    puts "After match: #{ $' }"
  end
end
