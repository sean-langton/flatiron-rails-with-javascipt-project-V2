require 'test_helper'

class VoyagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get voyages_new_url
    assert_response :success
  end

  test "should get create" do
    get voyages_create_url
    assert_response :success
  end

end
