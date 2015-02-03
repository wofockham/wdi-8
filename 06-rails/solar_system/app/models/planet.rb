# == Schema Information
#
# Table name: planets
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :text
#  orbit      :float
#  mass       :float
#  diameter   :float
#  distance   :float
#  moons      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Planet < ActiveRecord::Base
end
