require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Aiyeplay
  class Application < Rails::Application
    config.load_defaults 6.0

    config.time_zone = "America/Sao_Paulo"

    config.generators.system_tests = nil
    config.generators { |g| g.test_framework :rspec }

    config.eager_load_paths << Rails.root.join("lib")
  end
end
