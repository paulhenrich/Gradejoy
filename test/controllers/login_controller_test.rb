require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
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

  test "should get forgot_email" do
    get :forgot_email
    assert_response :success
  end

  test "should get forgot_password" do
    get :forgot_password
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end
end
