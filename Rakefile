require 'bundler/gem_tasks'
require 'appraisal'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task default: :spec

require 'yard'
YARD::Rake::YardocTask.new

desc 'Start Pry with runtime dependencies loaded'
task :console, :script do |_t, args|
  command  = 'bundle exec pry'
  command += "-r #{args[:script]}" if args[:script]
  sh command
end
