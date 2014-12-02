require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

end
