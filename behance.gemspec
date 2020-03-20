# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'behance/version'

Gem::Specification.new do |gem|
  gem.name          = "behance"
  gem.version       = Behance::VERSION
  gem.authors       = ["Amed Rodriguez"]
  gem.email         = ["amed@tractical.com"]
  gem.description   = %q{A Ruby wrapper for the Behance API}
  gem.summary       = %q{A Ruby wrapper for the Behance API}
  gem.homepage      = "https://github.com/amedrz/behance"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency     'faraday'
  gem.add_runtime_dependency     'faraday_middleware'
  gem.add_runtime_dependency     'json'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'rspec'
end
