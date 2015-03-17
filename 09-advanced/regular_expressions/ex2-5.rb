# ruby matcher.rb simpsons.txt

ARGF.each do |line|
  if (match = line.match /(?<word>\w+a)\b(?<after>.{,5})/) # Greediness
    puts "before contains '#{ match['after'] }'"
    puts "word contains '#{ match['word'] }'"
    puts "Before match: #{ $` }"
    puts "Match: #{ $& }"
    puts "After match: #{ $' }"
  end
end
