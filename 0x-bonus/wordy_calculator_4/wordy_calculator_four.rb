require 'pry'
class WordProblem
  def initialize( question )
    @question = question
    sort_operands
    sort_operators
  end

  def answer
    result = @operands.shift
    @operands.zip( @operators ).each do |operand, operator|
      case operator
        when 'plus' then result += operand
        when 'minus' then result -= operand
        when 'divided by' then result /= operand
        when 'multiplied by' then result *= operand
      end
    end
    result
  end

  def sort_operands
    @operands = @question.scan( /-?\d+/ ).map { |i| i.to_i }
  end

  def sort_operators
    @operators = @question.scan( /plus|minus|divided by|multiplied by/ )
  end
end