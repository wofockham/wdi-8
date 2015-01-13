timber_length = 12
timber_width = 18

def area(length, width)
  length * width
end

puts "The area is: #{ area(timber_length, timber_width) }"

def volume(length, width, height)
  length * width * height
end

puts "The volume is: #{ volume(8, 12, 13) }"

def square(n)
  n * n
end

puts "The square of 777 is: #{ square(777) }"

def cube(n)
  n * square(n)
end

puts "The cube of 8 is: #{ cube(8) }"

def name_tag(first, last, gender, age)
  if gender == 'f'
    if age < 19
      "Miss #{ first } #{ last }"
    else
      "Ms. #{ first } #{ last }"
    end
  else
    "Mr #{ first } #{ last }"
  end
end

puts name_tag('Groucho', 'Marx', 'm', 140)
puts name_tag('Mary', 'Contrary', 'f', 5)
puts name_tag('Old Woman', 'From Titanic', 'f', 94)

def italic(text)
  "<i>" + text + "</i>"
end

puts italic("Marx Brothers")

def bold(text)
  "<b>" + text + "</b>"
end

puts bold("Duck Soup")

puts bold(italic("Raising Hell"))




