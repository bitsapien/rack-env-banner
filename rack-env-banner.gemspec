require File.expand_path('../lib/rack/env-banner/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "rack-env-banner"
  gem.version     = Rack::EnvBanner::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["bitsapien"]
  gem.email       = ["bitsapien@gmail.com"]
  gem.homepage    = "https://github.com/bitsapien/rack-env-banner"
  gem.summary     = "Have a banner to differentiate between multiple environments"
  gem.description = "A banner shows up on the top of each page one opens, also a X-Environment header is added"
  gem.license     = "MIT"

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.0.0'

  gem.add_dependency "rack", ">= 1.1"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 3.0"
  gem.add_development_dependency "coveralls"
end
