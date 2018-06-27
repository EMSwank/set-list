ENV["RACK_ENV"] = 'test'
require 'bundler'
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

#Begin database cleaner logic
DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
end
#End database cleaner logic