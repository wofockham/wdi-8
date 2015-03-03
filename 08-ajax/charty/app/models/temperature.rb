# == Schema Information
#
# Table name: temperatures
#
#  id         :integer          not null, primary key
#  maximum    :integer
#  minimum    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Temperature < ActiveRecord::Base
end
