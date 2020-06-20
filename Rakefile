require "rubocop/rake_task"
require "reek/rake/task"
require "rspec/core/rake_task"
require_relative "./lib/computer"

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:spec)
Reek::Rake::Task.new do |t|
  t.fail_on_error = false
end

task default: %i[rubocop:auto_correct reek spec]

task :run do
  Computer::Boot.new.start
end
