class Apartment
  attr_accessor :name, :price, :sqft, :num_bedrooms, :num_bathrooms, :tenants

  def initialize(name, sqft, num_bedrooms, num_bathrooms)
    @price = 0
    @name = name
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @tenants = []
  end

  def occupied?
    @tenants.any?
  end

  def to_s
    "Apartment #{ @name } is #{ @sqft } square feet with #{ @tenants.count } tenants."
  end
end
