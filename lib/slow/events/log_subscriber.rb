# frozen_string_literal: true

module Slow
  module Events
    class LogSubscriber < ::ActiveRecord::LogSubscriber
      def sql(event)
        return if event.duration < Slow::Events.config.alert_duration

        debug Slow::Events::Format.build_message(event.duration, event.payload[:name] || event.payload[:sql] || 'Unknown')
      end

      attach_to :active_record
    end
  end
end
