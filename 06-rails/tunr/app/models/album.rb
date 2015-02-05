# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
  has_many :songs
end
