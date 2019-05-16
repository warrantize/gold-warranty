require 'test_helper'

class WarrantiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warranties_index_url
    assert_response :success
  end

  test "should get create" do
    get warranties_create_url
    assert_response :success
  end

  test "should get new" do
    get warranties_new_url
    assert_response :success
  end

  test "should get edit" do
    get warranties_edit_url
    assert_response :success
  end

  test "should get show" do
    get warranties_show_url
    assert_response :success
  end

  test "should get update" do
    get warranties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get warranties_destroy_url
    assert_response :success
  end

end
