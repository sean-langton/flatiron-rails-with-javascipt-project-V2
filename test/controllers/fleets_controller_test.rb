require 'test_helper'

class FleetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fleets_index_url
    assert_response :success
  end

  test "should get show" do
    get fleets_show_url
    assert_response :success
  end

  test "should get new" do
    get fleets_new_url
    assert_response :success
  end

  test "should get create" do
    get fleets_create_url
    assert_response :success
  end

  test "should get destroy" do
    get fleets_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get fleets_edit_url
    assert_response :success
  end

end
