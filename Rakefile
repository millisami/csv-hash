require "bundler"
Bundler.setup

require "rake"
require "rdoc/task"
require "rspec"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "csv-hash/version"

task :gem => :build
task :build do
  system "gem build csv-hash.gemspec"
end

task :install => :build do
  system "sudo gem install mongoid-#{CSVHash::VERSION}.gem"
end

task :release => :build do
  system "git tag -a #{CSVHash::VERSION} -m 'Tagging #{CSVHash::VERSION}'"
  system "git push --tags"
  system "gem push mongoid-#{CsvHash::VERSION}.gem"
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

RSpec::Core::RakeTask.new('spec:progress') do |spec|
  spec.rspec_opts = %w(--format progress)
  spec.pattern = "spec/**/*_spec.rb"
end

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "csv-hash #{CSVHash::VERSION}"
  rdoc.rdoc_files.include("README*")
  rdoc.rdoc_files.include("CHANGELOG*")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

task :default => :spec