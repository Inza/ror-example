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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
