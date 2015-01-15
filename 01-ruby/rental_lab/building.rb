class Building
  attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :apartments

  def initialize(address, style, has_doorman, has_elevator, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @has_elevator = has_elevator
    @num_floors = num_floors
    @apartments = {}
  end

  # TODO: Add other details like number of floors.
  def to_s
    "The #{ @style } building at #{ @address } has #{ @apartments.count } apartments."
  end
end