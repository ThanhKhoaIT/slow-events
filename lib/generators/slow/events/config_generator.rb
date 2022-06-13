# frozen_string_literal: true

require 'rails/generators/base'

module Slow
  module Events
    module Generators
      class ConfigGenerator < Rails::Generators::Base
        source_root File.expand_path('../templates', __dir__)

        def copy_initializer
          template 'config.rb', 'config/initializers/slow_events.rb'
        end
      end
    end
  end
end
