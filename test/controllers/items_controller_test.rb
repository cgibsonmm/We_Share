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

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get new" do
    get items_new_url
    assert_response :success
  end

  test "should get show" do
    get items_show_url
    assert_response :success
  end

  test "should get edit" do
    get items_edit_url
    assert_response :success
  end

  test "should get delete" do
    get items_delete_url
    assert_response :success
  end

end
