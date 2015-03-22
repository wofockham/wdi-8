class Fixnum
  # We have used a constant here...
    # They are accessible anywhere within the class (or module if that is where you have defined it)
    # Also, they are accessible through the scope of Fixnum (i.e. I could access it through Fixnum::ROMAN_NUMERALS)
    # http://rubylearning.com/satishtalim/ruby_constants.html
  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  # Remember what we were talking about this morning with Joel. This wouldn't work with Javascript or older versions of Ruby as Hashes (or Objects) don't have to be stored in any particular order. (I have put the array version at the point and they will both work)

  def to_roman
    # Self refers to the number that to_roman was called upon, we need to assign it to another variable as you cannot reassign self
    number = self
    # Construct an empty string to append Roman characters to it.
    result = ""
    # The Ruby each loop is smart enough to iterate through both a hash (with key and value) or an array of arrays.
    ROMAN_NUMERALS.each do |roman, integer|
      while number >= integer
        result += roman
        number -= integer
      end
    end
    result
  end
end

# ROMAN_NUMERALS = [
#   ["M", 1000],
#   ["CM", 900],
#   ["D", 500],
#   ["CD", 400],
#   ["C",100],
#   ["XC",90],
#   ["L",50],
#   ["XL",40],
#   ["X",10],
#   ["IX",9],
#   ["V",5],
#   ["IV",4],
#   ["I",1]
# ]