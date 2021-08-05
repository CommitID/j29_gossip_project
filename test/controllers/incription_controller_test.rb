require 'test_helper'

class IncriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get incription_index_url
    assert_response :success
  end

  test "should get show" do
    get incription_show_url
    assert_response :success
  end

  test "should get new" do
    get incription_new_url
    assert_response :success
  end

  test "should get create" do
    get incription_create_url
    assert_response :success
  end

  test "should get update" do
    get incription_update_url
    assert_response :success
  end

  test "should get edit" do
    get incription_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get incription_destroy_url
    assert_response :success
  end

end
