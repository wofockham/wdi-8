# ruby matcher.rb simpsons.txt

ARGF.each do |line|
  if (match = line =~ /(\w+a)\b/)
    puts "$1 contains '#{ $1 }'"
    puts "Before match: #{ $` }"
    puts "Match: #{ $& }"
    puts "After match: #{ $' }"
  end
end
