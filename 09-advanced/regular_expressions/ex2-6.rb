# ruby matcher.rb simpsons.txt

ARGF.each do |line|
  if (match = line.match /[ \t]+$/)
    puts line.chomp + 'WS'
  else
    puts line
  end
end
