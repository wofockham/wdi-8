class WordProblem
  # Create the instance variable
  def initialize( question )
    @question = question
  end

  def answer
    if matches.nil?
      # Checks to see if the result of the matches method is nil.  If it is we will raise an error. By calling this matches method we also set the @matches variable (important!)
      # http://rubylearning.com/satishtalim/ruby_exceptions.html
      # http://phrogz.net/programmingruby/tut_exceptions.html
      raise ArgumentError.new "I don't understand"
    end
    # We use the send method to call a method (the result of the operation method). The value that had method send called on it as well as the second parameter
    # http://rubymonk.com/learning/books/2-metaprogramming-ruby/chapters/25-dynamic-methods/lessons/65-send
    # http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_2.html
    # (1.3.2)
    @answer = @matches[1].to_i.send( operation(2), @matches[3].to_i )
    if chain?
      # If there are more operations to perform:
      # Use the result of the first .send call, and pass in the second operation sign and the third number
      # Reassign answer to be the result of this
      @answer = @answer.send( operation(5), @matches[6].to_i )
    end
    # Return answer
    @answer
  end

  def matches
    # Lots of little captures here (signified by the parentheses).
    @matches = @question.match( /What is (-?\d+) (plus|minus|multiplied by|divided by) (-?\d+)( (plus|minus|multiplied by|divided by) (-?\d+))?\?/ )
  end

  def chain?
    @matches[4]
  end

  def operation( number )
    case @matches[number]
      when 'plus' then :+
      when 'minus' then :-
      when 'multiplied by' then :*
      when 'divided by' then :/
    end
  end
end