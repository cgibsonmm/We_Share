# == Schema Information
#
# Table name: item_loans
#
#  id                            :integer          not null, primary key
#  item_id                       :integer
#  from_user                     :integer
#  to_user                       :integer
#  owner_confirmed_loan          :boolean          default(FALSE)
#  owner_confirmed_loan_returned :boolean
#  duration                      :datetime
#  start_date                    :datetime
#  checkedout_at                 :datetime
#  due_at                        :datetime
#  returned_at                   :datetime
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#

require 'test_helper'

class ItemLoansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get item_loans_index_url
    assert_response :success
  end

  test "should get new" do
    get item_loans_new_url
    assert_response :success
  end

  test "should get edit" do
    get item_loans_edit_url
    assert_response :success
  end

  test "should get show" do
    get item_loans_show_url
    assert_response :success
  end

  test "should get delete" do
    get item_loans_delete_url
    assert_response :success
  end

end
