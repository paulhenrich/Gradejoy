require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get gradebook" do
    get :gradebook
    assert_response :success
  end

  test "should get communication" do
    get :communication
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get spanish1" do
    get :spanish1
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end
end
