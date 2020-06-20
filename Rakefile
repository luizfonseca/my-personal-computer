require "rubocop/rake_task"
require "reek/rake/task"
require "rspec/core/rake_task"

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new(:spec)
Reek::Rake::Task.new do |t|
  t.fail_on_error = false
end

task default: %i[rubocop:auto_correct spec reek]
