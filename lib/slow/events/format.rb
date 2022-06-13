# frozen_string_literal: true

module Slow
  module Events
    class Format
      CLEAR   = "\e[0m"
      BOLD    = "\e[1m"

      RED     = "\e[31m"
      GREEN   = "\e[32m"
      YELLOW  = "\e[33m"
      BLUE    = "\e[34m"
      MAGENTA = "\e[35m"
      CYAN    = "\e[36m"
      WHITE   = "\e[37m"

      def self.build_message(duration, text)
        [
          CLEAR,
          BOLD,
          RED,
          Slow::Events.config.prefix,
          "(#{duration.round(2)}ms)",
          Slow::Events.config.alert_color,
          text,
          CLEAR
        ].join(' ')
      end
    end
  end
end
