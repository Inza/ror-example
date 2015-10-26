# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  cost       :integer
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :cost

  validates_numericality_of :cost
end
