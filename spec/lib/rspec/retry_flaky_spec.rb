require 'spec_helper'

describe RSpec::Flaky do

  def count
    @count ||= 0
    @count
  end

  def count_up
    @count ||= 0
    @count += 1
  end

  def set_expectations(expectations)
    @expectations = expectations
  end

  def shift_expectation
    @expectations.shift
  end

  context 'no retry option' do
    it 'should work' do
      expect(true).to be true
    end
  end

  context 'with retry_flaky option' do
    let(:retry_count) { 3 }
    let(:sleep_interval) { 10 }

    it 'default flaky_retry_count is 1' do
      expect(RSpec.configuration.flaky_retry_count).to eq 1
    end
    it "set flaky_retry_count is #{:retry_count}" do
      RSpec.configure { |c| c.flaky_retry_count = retry_count }
      expect(RSpec.configuration.flaky_retry_count).to eq retry_count
    end

    it 'default  flaky_sleep_interval is 0' do
      expect(RSpec.configuration.flaky_sleep_interval).to eq 0
    end
    it "set flaky_sleep_interval is #{:sleep_interval}" do
      RSpec.configure { |c| c.flaky_sleep_interval = sleep_interval }
      expect(RSpec.configuration.flaky_sleep_interval).to eq sleep_interval
    end
  end
end