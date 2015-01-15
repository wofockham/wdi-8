class Apartment
  attr_accessor :price, :sqft, :num_bedrooms, :num_bathrooms, :tenants

  def initialize(sqft, num_bedrooms, num_bathrooms)
    @price = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @tenants = []
  end

  def occupied?
    @tenants.any?
  end

  def to_s
    "The apartment is #{ @sqft } square feet with #{ @tenants.count } tenants."
  end
end
