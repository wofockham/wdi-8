class WordProblem
  def initialize( question )
    @question = question
  end

  def answer
    if matches.nil?
      raise ArgumentError.new "I don't understand"
    end
    @answer = @matches[1].to_i.send( operation, @matches[3].to_i )
  end

  def matches
    @matches = @question.match( /What is (-?\d+) (plus|minus|multiplied by|divided by) (-?\d+)\?/ )
  end

  def operation
    case @matches[2]
      when 'plus' then :+
      when 'minus' then :-
      when 'multiplied by' then :*
      when 'divided by' then :/
    end
  end
end