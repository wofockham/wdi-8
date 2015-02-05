# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  filename   :string
#  album_id   :integer
#  artist_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
end
