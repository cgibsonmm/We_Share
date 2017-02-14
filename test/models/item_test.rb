# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  item_type          :string           not null
#  item_description   :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  user_id            :integer
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
