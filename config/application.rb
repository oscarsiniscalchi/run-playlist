require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module RembrmeMeApi
  class Application < Rails::Application
  end
end
