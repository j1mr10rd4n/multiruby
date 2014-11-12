require 'rake/testtask'
require "rake/extensiontask"

task default: [:test]

Rake::TestTask.new :test do |t|
  t.pattern = "spec/*_spec.rb"
end

Rake::ExtensionTask.new("verbose_string") do |ext|
  ext.lib_dir = File.join('lib', 'verbose_string')
end

Rake::Task[:test].prerequisites << :compile
