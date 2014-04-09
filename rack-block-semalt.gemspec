# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/block_semalt/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-block-semalt"
  spec.version       = Rack::BlockSemalt::VERSION
  spec.authors       = ["Michael Dippery"]
  spec.email         = ["michael@monkey-robot.com"]
  spec.summary       = %q{Rack middleware to block the semalt.com web crawler.}
  spec.homepage      = "https://github.com/mdippery/rack-block-semalt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
