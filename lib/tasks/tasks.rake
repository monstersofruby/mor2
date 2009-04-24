task "test:basic" => [ :spec, :features ]
task "test:all" => [ :spec, "features:all" ]
task :default => "test:basic"