# frozen_string_literal: true

require_relative 'events/version'
require_relative 'events/config'
require_relative 'events/format'
require_relative 'events/log_subscriber'

module Slow::Events
  def self.config
    @config ||= Slow::Events::Config.new
    yield(@config) if block_given?
    @config
  end
end
