# frozen_string_literal: true

require_relative 'lib/slow/events/version'

Gem::Specification.new do |spec|
  spec.name          = 'slow-events'
  spec.version       = Slow::Events::VERSION
  spec.authors       = ['Khoa Nguyen']
  spec.email         = ['thanhkhoait@gmail.com']

  spec.summary       = 'Easy to see the Slow events in Rails logs'
  spec.description   = 'This GEM will support U in optimizing your Rails app, easy to see the slow events in the Rails log.'
  spec.homepage      = 'https://github.com/ThanhKhoaIT/slow-events'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ThanhKhoaIT/slow-events'
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
