# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-resourceguru/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel van Gils"]
  gem.email         = ["daniel@steam.nl"]
  gem.description   = %q{OmniAuth strategy for ResourceGuru.}
  gem.summary       = %q{OmniAuth strategy for ResourceGuru.}
  gem.homepage      = "https://github.com/kamerblauwlicht/omniauth-resourceguru"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-resourceguru"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::ResourceGuru::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
