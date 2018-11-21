require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TalkTalk
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.web_console.development_only = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Add this config can affect Faker::Name.name # => "张三"
    # config.i18n.default_locale = :'zh-CN'

    # Format time
    config.time_zone = 'Beijing'
    config.active_record.default_timezone = :local

    # custom generate
    config.generators do |g|
      g.test_framework  false
      g.assets false
      g.helper false
      g.jbuilder false

      # You can rails g model fake_model1
      # then annotate the following 5 lines
      # then rails g model fake_model2
      # and then compare the two results.
      g.test_framework :rspec,
        # fixtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        request_specs: false,
        controller_specs: false
    end

    # Don't generate system test files.
    config.generators.system_tests = nil

    # autoload lib/*
    config.eager_load_paths += %W[#{config.root}/lib]
    config.autoload_paths << Rails.root.join('lib')
  end
end

SITE_NAME='来吧, 畅所欲言!'
