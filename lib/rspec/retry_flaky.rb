require 'rspec/core'
require 'rspec/flaky/version'
require 'rspec_ext/rspec_ext'

module RSpec
  class Flaky
    def self.apply
      RSpec.configure do |conf|
        conf.add_setting :verbose_retry_flaky_example, :default => false
        conf.add_setting :flaky_retry_count, :default => 1
        conf.add_setting :flaky_sleep_interval, :default => 0

        conf.around(:example) do |example|
          retry_count = RSpec.configuration.flaky_retry_count
          sleep_interval = RSpec.configuration.flaky_sleep_interval

          retry_count.times do |r_count|
            if RSpec.configuration.verbose_retry_flaky_example && r_count > 0
              msg = "\nRetry flaky #{r_count} times: #{example.location}"
              RSpec.configuration.reporter.message msg
            end

            example.clear_exception
            example.run

            break if example.exception.nil?

            sleep sleep_interval if sleep_interval.to_i > 0

          end

        end # conf.around
      end # RSpec.configure
    end # def self.apply
  end # class Flaky
end # module RSpec

RSpec::Flaky.apply