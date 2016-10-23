require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Vanels
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.generators do |g|
      g.test_framework  nil
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
      g.factory_girl    false
    end

    config.i18n.default_locale = :fr
    config.time_zone = 'Bern'
    config.i18n.available_locales = :fr
    
  end
end
