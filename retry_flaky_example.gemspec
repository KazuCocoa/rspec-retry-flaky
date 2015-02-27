# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retry_flaky_example/version'

Gem::Specification.new do |spec|
  spec.name          = "retry_flaky_example"
  spec.version       = RetryFlakyExample::VERSION
  spec.authors       = ["Kazuaki MATSUO"]
  spec.email         = ["fly.49.89.over@gmail.com"]
  spec.summary       = %q{retry failed flaky example}
  spec.description   = %q{retry failed flaky example}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
