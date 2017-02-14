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