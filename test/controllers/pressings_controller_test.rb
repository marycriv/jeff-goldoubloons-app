require 'test_helper'

class PressingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pressings_index_url
    assert_response :success
  end

  test "should get show" do
    get pressings_show_url
    assert_response :success
  end

  test "should get new" do
    get pressings_new_url
    assert_response :success
  end

  test "should get edit" do
    get pressings_edit_url
    assert_response :success
  end

end
