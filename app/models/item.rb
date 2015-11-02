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
#  user_id    :integer
#
# Indexes
#
#  index_items_on_user_id  (user_id)
#

class Item < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :cost

  validates_numericality_of :cost

  belongs_to :user, inverse_of: :items
end
