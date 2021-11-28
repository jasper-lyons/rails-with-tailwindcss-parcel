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
