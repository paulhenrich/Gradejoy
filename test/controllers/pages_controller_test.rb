require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Gradejoy"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "#{@base_title} | About"

  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "#{@base_title} | Help"
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
    assert_select "title", "#{@base_title} | Privacy"
  end

  test "should get terms" do
    get :terms
    assert_response :success
    assert_select "title", "#{@base_title} | Terms"
  end

  test "should get account" do
    get :account
    assert_response :success
    assert_select "title", "#{@base_title} | Account"
  end

  test "should get communication" do
    get :communication
    assert_response :success
    assert_select "title", "#{@base_title} | Communication"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "#{@base_title} | Home"
  end

end
