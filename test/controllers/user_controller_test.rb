require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get step1" do
    get user_step1_url
    assert_response :success
  end

  test "should get step2" do
    get user_step2_url
    assert_response :success
  end

end
