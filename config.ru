require 'rubygems'

gem 'actionpack'
gem 'railties'

require 'rails'
require 'action_controller/railtie'
require 'puma'

class RailsFromScratch < Rails::Application
  config.logger = Logger.new($stdout)

  routes.append do
    get '/', controller: 'guests', action: :landing_page
  end
end

class GuestsController < ActionController::Base
  LANDING_PAGE_TEMPLATE = ::DATA.read
  def landing_page
    render inline: LANDING_PAGE_TEMPLATE
  end
end

RailsFromScratch.initialize!

Puma::Launcher.new(Puma::Configuration.new do |config|
  config.app Rails.application
end, events: Puma::Events.stdio).run

__END__
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>
  <h1>Hello!</h1>
</body>
</html>
