ENV["RAILS_ENV"] ||= "test"

require "simplecov"
SimpleCov.start "rails"

require File.expand_path("../../config/environment", __FILE__)

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

Capybara.javascript_driver = :poltergeist
