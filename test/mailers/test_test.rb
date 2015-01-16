require 'test_helper'

class TestTest < ActionMailer::TestCase
  test "test1" do
    mail = Test.test1
    assert_equal "Test1", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["gradejoydonotreply@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
