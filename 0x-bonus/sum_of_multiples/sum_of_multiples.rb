class SumOfMultiples
  def self.to( number )
    new( 3, 5 ).to( number )
  end

  def initialize( *multiples )
    @multiples = multiples
  end

  def to( number )
    ( 1...number )
      .select { |n| multiples?(n) }
      .reduce( 0, :+ )
  end

  def multiples?( number )
    @multiples.any? { |multiple| number % multiple == 0 }
  end
end


