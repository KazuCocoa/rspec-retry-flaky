# coding: utf-8

require_relative 'lib/rspec/flaky/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-retry-flaky'
  spec.version       = RSpec::Flaky::VERSION
  spec.authors       = ['Kazuaki MATSUO']
  spec.email         = ['fly.49.89.over@gmail.com']
  spec.summary       = %q{retry failed flaky example}
  spec.description   = %q{retry failed flaky example}
  spec.homepage      = 'https://github.com/KazuCocoa/rspec-retry-flaky'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency %q{rspec}
  spec.add_dependency %q{'rspec', '~>3.0.0'}
  spec.add_development_dependency %q{guard-rspec}
end
