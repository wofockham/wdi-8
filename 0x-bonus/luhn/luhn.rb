class Luhn
  def initialize(n)
    @n = n
  end

  def self.create(n)
    test_number = n * 10
    luhn = Luhn.new test_number
    return test_number if luhn.valid?
    test_number + 10 - (luhn.checksum % 10) # I am not expected to understand this.
  end

  def check_digit
    @n % 10
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end

  private
  def addends
    @n.to_s.reverse.chars.map.with_index do |digit, i|
      digit = digit.to_i
      digit = digit * 2 unless (i % 2 == 0) # Double every second digit.
      digit = digit - 9 if digit >= 10 # Reduce large digits to be less than 10.
      digit
    end.reverse
  end
end
