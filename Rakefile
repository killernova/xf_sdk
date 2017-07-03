require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("xf_sdk") do |ext|
  ext.lib_dir = "lib/xf_sdk"
end

task :default => [:clobber, :compile, :spec]
