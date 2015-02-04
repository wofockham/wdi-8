# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :string
#  medium     :string
#  style      :string
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#  artist_id  :integer
#

class Work < ActiveRecord::Base
  belongs_to :artist
end
