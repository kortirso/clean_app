require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
# require 'action_cable/engine'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CleanApp
  # Base class
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    I18n.available_locales = %i[en]
    config.i18n.default_locale = :en

    config.active_record.schema_format = :ruby
    config.generators do |g|
      g.test_framework :rspec, fixtures: true, views: false, view_specs: false, helper_specs: false,
          routing_specs: false, controller_specs: true, request_specs: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      g.stylesheets false
      g.javascripts false
      g.helper false
    end

    config.autoload_paths += %W[#{config.root}/app/jobs]
    config.active_job.queue_adapter = :sidekiq

    config.generators.system_tests = nil
  end
end
