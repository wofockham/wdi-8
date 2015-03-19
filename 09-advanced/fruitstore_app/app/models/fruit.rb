class Fruit < ActiveRecord::Base
  belongs_to :shelf

  def squishy?
    nil
  end
end
