ENV["RACK_ENV"] = 'test'
require 'bundler'
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)
require 'capybara/dsl'


DatabaseCleaner.strategy = :truncation
Capybara.app = SetList
Capybara.save_path = 'tmp/capybara'

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
  c.include Capybara::DSL
end
