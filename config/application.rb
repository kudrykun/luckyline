require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Luckyline
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:en, :ru]
    config.i18n.default_locale = :ru
    config.assets.initialize_on_precompile = false
    config.serve_static_assets = true
    config.time_zone = "Moscow"
  end
end
