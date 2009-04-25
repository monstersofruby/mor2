Quick Start
===========

* Fork this repo
* Clone *yours*
* `cp config/database.yml.example config/database.yml`
* `sudo rake gems:install`
* `rake`
* Play!

Required gems
=============

This sample app comes with its required libs and dependencies frozen in vendor:

* Rails 2.3.2
* Rspec
* Rspec Rails
* Cucumber
* Webrat
* Selenium Client
* DbCleaner

Nokogiri requires native extensions, that's why you have to `sudo rake gems:install`.

Rake tasks
==========

* `rake` -> run basic tests (specs & basic features)
* `rake spec` -> run specs
* `rake features` -> run basic features
* `rake features:advanced` -> run advanced features
* `rake features:all` -> run all features
* `rake test:all` -> run all tests (specs & all features)

Delete or edit `lib/tasks/tasks.rake` if you prefer `Test::Unit` to `Rspec`.