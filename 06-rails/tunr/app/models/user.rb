# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#

class User < ActiveRecord::Base
  has_secure_password # also needs password_digest column and bcrypt gem.
  has_many :mixtapes
end
