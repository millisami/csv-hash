# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "csv-hash/version"

Gem::Specification.new do |s|
  s.name        = %q{millisami-csv-hash}
  s.version     = CSVHash::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tal Atlas, Millisami"]
  s.email       = ["millisami@gmail.com"]
  s.summary     = %q{A gem for interacting with CSVs as hashes}
  s.description = %q{Will import a CSV as an array of hashes. Or will export a CSV from an array of hashes (if given a column list).}
  s.rubyforge_project = "millisami-csv-hash"
  s.required_rubygems_version = ">= 1.3.6"
  s.homepage    = %q{http://github.com/Talby/csv-hash}
  s.rdoc_options = ["--charset=UTF-8"]
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency("fastercsv", ["~> 1.5.0"])
  s.add_development_dependency("rspec", ["~> 2.6.0"])
  s.add_development_dependency("rdoc", ["~> 3.5.0"])
  s.add_development_dependency("rdoc", ["~> 3.5.0"])
  s.add_development_dependency("rake", ["~> 0.8"])
end

