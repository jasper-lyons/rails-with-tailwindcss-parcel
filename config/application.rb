# only load the bits of rails we need
require 'rails'
require 'action_controller/railtie'
require 'active_model/railtie'
require 'active_record/railtie'

# This is where we put the global configurations for the application.
# These configs will be applied in all environments.
module RailsWithTailwindcss
  class Application < Rails::Application
    # setup logging to STDOUT
    config.logger = Logger.new($stdout)

    # serve static assets from /public
    config.public_file_server.enabled = true
  end
end
