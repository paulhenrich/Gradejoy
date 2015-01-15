# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.
Gradejoy::Application.initialize!
Gradejoy::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: "gradejoydonotreply@gmail.com",
    password: ENV['GMAIL_PASSWORD'],
    enable_starttls_auto: true
  }
end
