# == Schema Information
#
# Table name: items
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  item_type        :string           not null
#  item_description :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  image            :string
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
