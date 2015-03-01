require 'rspec'
require_relative '../lib/rspec/retry_flaky'

RSpec.configure do |c|
  c.verbose_retry_flaky_example = true
end
