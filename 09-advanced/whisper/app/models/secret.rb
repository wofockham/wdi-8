# == Schema Information
#
# Table name: secrets
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Secret < ActiveRecord::Base
end
