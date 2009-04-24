cucumber = Dir[RAILS_ROOT + '/vendor/gems/cucumber-*/lib'].first
$LOAD_PATH.unshift(cucumber) if cucumber

begin
  require 'cucumber/rake/task'

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "--format pretty --tags ~advanced"
  end
  Cucumber::Rake::Task.new("features:advanced") do |t|
    t.cucumber_opts = "--format pretty --tags advanced"
  end
  task :features => 'db:test:prepare'
  task "features:all" => [ :features, "features:advanced" ]
rescue LoadError
  desc 'Cucumber rake task not available'
  task :features do
    abort 'Cucumber rake task is not available. Be sure to install cucumber as a gem or plugin'
  end
end
