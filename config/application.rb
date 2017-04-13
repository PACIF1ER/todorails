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
  config.i18n.default_locale = :en
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
    ActionMailer::Base.smtp_settings = {
  :address      => 'smtp.gmail.com',
  :domain       => 'gmail.com',
  :port         =>  587,
  :user_name      => "mailertodoapp@gmail.com",
  :password       => "allahuakbar98",
  :authentication   => 'plain',
  :enable_starttls_auto => true
    }

  end
end
