require 'rspec'
require 'rspec/retry_flaky'

RSpec.configure do |c|
  c.verbose_retry_flack_example = true
end
