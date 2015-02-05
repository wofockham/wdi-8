# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Artist < ActiveRecord::Base
  has_many :songs
end
