# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_eve/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_eve"
  spec.version       = RubyEve::VERSION
  spec.authors       = ["Bart Kamphorst", "Arlette van Wissen"]
  spec.email         = ["eve@kamphorst.com"]
  spec.summary       = %q{Ruby implementation of Eve Agent.}
  spec.description   = %q{Ruby implementation of Eve Agent.}
  spec.homepage      = "https://github.com/bartkamphorst/ruby_eve"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
