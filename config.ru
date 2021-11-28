# only load the bits of rails we need
require 'rails'
require 'action_controller/railtie'

require './config/application'

Rails.application.initialize!

run Rails.application
