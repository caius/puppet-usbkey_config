begin
  require 'puppetlabs_spec_helper/rake_tasks'
  require 'puppet_blacksmith/rake_tasks'
rescue LoadError
  $stderr.puts "ERROR: can't load required dependencies"
  $stderr.puts
  $stderr.puts "Run `gem install puppet-blacksmith puppetlabs_spec_helper' to install them"
  exit 1
end

desc "Run all the check tasks"
task :check => ['check:dot_underscore', 'check:git_ignore', 'check:symlinks', 'check:test_file']
