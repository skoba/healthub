require 'rubygems'
require 'spork'
#require 'capybara/rails'
#require 'factory_girl'
#Factory.find_definitions

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However, 
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # == Mock Framework
    #
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
    #  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
    #config.use_transactional_fixtures = false

    #config.use_transactional_fixtures = false # for selenium

    # config.before(:suite) do
    #   DatabaseCleaner.strategy = :truncation
    # end
    
    # config.before(:each) do
    #   DatabaseCleaner.start
    # end
    
    # config.after(:each) do
    #   DatabaseCleaner.clean
    # end
  end

#  ActiveSupport::Dependencies.clear
#  ActiveRecord::Base.instantiate_observers
end

Spork.each_run do
  # This code will be run each time you run your specs.
  # Factory.factories.clear
  # Dir[Rails.root.join("spec/factories/**/*.rb")].each{|f| load f}
  Healthub::Application.reload_routes!
end

if Spork.using_spork?
  ActiveSupport::Dependencies.clear
#  ActiveRecord::Base.instantiate_observers
end
