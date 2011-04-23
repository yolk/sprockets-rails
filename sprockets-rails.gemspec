# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sprockets-rails/version"

Gem::Specification.new do |s|
  s.name        = "sprockets-rails"
  s.version     = SprocketsRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Stephenson", "Sebastian Munz"]
  s.email       = ["sebastian@yo.lk"]
  s.homepage    = "https://github.com/yolk/sprockets-rails"
  s.summary     = %q{Sprockets JavaScript dependency management and concatenation support for Rails applications.}
  s.description = %q{Sprockets JavaScript dependency management and concatenation support for Rails applications.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'sprockets',       '>= 1.0'
end