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
#  is_admin        :boolean          default("false")
#

class User < ActiveRecord::Base
  has_secure_password # also needs password_digest column and bcrypt gem.
  has_many :mixtapes

  validates :name, :presence => true, :uniqueness => true
end
