$:.push File.expand_path("../lib", __FILE__)
require "samuel_l/version"

Gem::Specification.new do |s|
  s.name        = "sameul-l"
  s.version     = Samuel::L::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeshua Borges"]
  s.email       = ["jesh@jesh.me"]
  s.homepage    = "http://jeshuaborges.github.com/samuel-l"
  s.summary     = %q{Faker on Samuel L Jackson}
  s.description = %q{Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass.}

  s.add_dependency('faker', '~> 1')

  s.files         = `git ls-files -- lib/*`.split("\n") + %w(History.txt License.txt README.md)
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end