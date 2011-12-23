# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "samuel_l/version"

Gem::Specification.new do |s|
  s.name        = "samuel-l"
  s.version     = Samuel::L::VERSION
  s.authors     = ["Jeshua Borges"]
  s.email       = ["jesh@jesh.me"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "samuel-l"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "i18n"
end
