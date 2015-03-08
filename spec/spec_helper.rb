require 'rspec'
require_relative '../lib/rspec/retry_flaky'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start
RSpec.configure do |c|
  c.verbose_retry_flaky_example = true
end
