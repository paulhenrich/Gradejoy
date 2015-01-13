class Test < ActionMailer::Base
  default from: "robertlandreaux@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.test.test1.subject
  #
  def test1
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
