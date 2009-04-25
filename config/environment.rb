RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "rspec-rails", :lib => false, :version => "1.2.4"
  config.gem "cucumber", :lib => false, :version => "0.3.0"
  config.gem "webrat", :lib => false, :version => "0.4.4"
  config.gem "selenium-client", :lib => false, :version => "1.2.14"
  config.gem "bmabey-database_cleaner", :lib => false, :version => "0.1.2", :source => "http://gems.github.com/"
  config.gem "nokogiri", :lib => false, :version => "1.2.3"

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  config.time_zone = 'UTC'
end