require 'test_helper'

class ReturnControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get return_new_url
    assert_response :success
  end

  test "should get show" do
    get return_show_url
    assert_response :success
  end

end
