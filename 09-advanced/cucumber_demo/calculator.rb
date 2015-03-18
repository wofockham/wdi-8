class Calculator
  def initialize
    @input = []
  end

  def <<(number)
    @input.push number.to_i
  end

  def add
    result = @input.inject(0, :+)
    puts result
    result
  end

  def subtract
    result = @input.inject(:-)
    puts result
    result
  end

  def multiply
    result = @input.inject(:*)
    puts result
    result
  end
end
