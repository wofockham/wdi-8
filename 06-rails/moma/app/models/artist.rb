# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string
#  nationality :string
#  dob         :date
#  period      :string
#  image       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Artist < ActiveRecord::Base
  has_many :works
end
