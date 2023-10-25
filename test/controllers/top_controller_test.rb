require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get top_main_url
    assert_response :success
  end

  test "should get login" do
    get top_login_url
    assert_response :success
  end

  test "should get new" do
    get top_new_url
    assert_response :success
  end
end
