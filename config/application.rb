require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module New
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_mailer.default_url_options = { host: 'fast-sands-25972.herokuapp.com', :protocol => 'https' }
    ActionMailer::Base.smtp_settings = {
  :address      => 'smtp.gmail.com',
  :domain       => 'gmail.com',
  :port         =>  587,
  :user_name      => "bydlovasya1488@gmail.com",
  :password       => "allahuakbar1998",
  :authentication   => 'plain',
  :enable_starttls_auto => true
    }

  end
end
