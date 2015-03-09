require 'pry' # ALWAYS ADD PRY

# No need to have an initialize method as nothing needs to be instantiated (i.e. turned into instance variables)
class Calculator
  def ask(question)

    # The two forward slashes create the the regular expression (i.e. what you are matching against)
    # Without round brackets, you are just matching characters - the round brackets specify an actual pattern to match against
    # \d+ matches all digits that are in a row
    # The -? is an optional thing, if the literal character "-" exists, include it in the matched piece, but if it doesn't, it can still match
    question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
      m[1].to_i + m[2].to_i
    end
  end
end

# USEFUL LINKS
# http://rubular.com/
# http://rubylearning.com/satishtalim/ruby_regular_expressions.html
# http://code.tutsplus.com/tutorials/ruby-for-newbies-regular-expressions--net-19812

# A BUNCH OF BOOKS THAT YOU MIGHT FIND INTERESTING
# https://files.slack.com/files-pri/T0351JZQ0-F03UJFDTP/regular_expressions.zip