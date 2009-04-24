Quick Start
===========

* Fork this repo
* Clone *yours*
* `rake`
* Play!

Required gems
=============

This sample app comes with its required libs frozen in vendor:

* Rails 2.3.2
* Rspec
* Rspec Rails
* Cucumber
* Webrat
* Selenium Client
* DbCleaner

But you may need to install some gems if you lack any dependency of these gems. You'll get an error when you run `rake`.

Rake tasks
==========

* `rake` -> run basic tests (specs & basic features)
* `rake spec` -> run specs
* `rake features` -> run basic features
* `rake features:advanced` -> run advanced features
* `rake features:all` -> run all features
* `rake test:all` -> run all tests (specs & all features)

Delete or edit `lib/tasks/tasks.rake` if you prefer `Test::Unit` to `Rspec`.