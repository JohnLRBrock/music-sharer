require 'test_helper'

class LogControllerTest < ActionDispatch::IntegrationTest
  test "should get current" do
    get log_current_url
    assert_response :success
  end

  test "should get history" do
    get log_history_url
    assert_response :success
  end

end
