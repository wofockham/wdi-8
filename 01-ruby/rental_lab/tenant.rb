class Tenant
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name, @age, @gender = name, age, gender
  end

  def to_s
    "#{ @name } is #{ @age } years old and #{ @gender }."
  end
end
