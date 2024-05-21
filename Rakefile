# frozen_string_literal: true

require "bundler/gem_tasks"

if File.exist?(".codeclimate")
  ENV["CODECLIMATE_REPO_TOKEN"] = File.read(".codeclimate").strip
end

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)
task default: :spec

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -Ilib -rcoradoc -rcoradoc/reverse_adoc"
end
