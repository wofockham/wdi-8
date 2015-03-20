class Fruit < ActiveRecord::Base
  belongs_to :shelf

  validates :name, :presence => true

  def squishy?
    nil
  end
end
