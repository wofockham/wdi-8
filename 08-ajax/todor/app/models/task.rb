# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  completed   :boolean          default("f")
#  created_at  :datetime
#  updated_at  :datetime
#

class Task < ActiveRecord::Base
end
