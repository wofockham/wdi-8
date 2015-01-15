class Person
  def initialize(age, gender, name)
    @age = age
    @gender = gender
    @name = name
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

  def gender=(gender)
    @gender = gender
  end

  def gender
    @gender
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

require 'pry'
binding.pry
