# frozen_string_literal: true

module Slow
  module Events
    class Config
      attr_reader :prefix
      attr_reader :alert_duration
      attr_reader :alert_color

      def initialize
        @prefix = 'Slow Event:'
        @alert_color = Slow::Events::Format::YELLOW # Default: Red
        @alert_duration = 500 # Default: 500ms
      end

      attr_writer :prefix

      def alert_color=(value)
        @alert_color = value || Slow::Events::Format::YELLOW
      end

      def alert_duration=(value)
        @alert_duration = [value, 50].max # Minimum: 50ms
      end
    end
  end
end
