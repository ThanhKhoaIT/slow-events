# Slow::Events
This GEM will support U to optimizing your Rails app, easy to see the slow events in Rails log.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slow-events'
```

And then execute:
```
$ bundle install
```

Or install it yourself as:
```
$ gem install slow-events
```

## Usage

- You can custom the setting.
```
$ rails generate slow:events:config
```

And change the your setting in `config/initializers/slow_events.rb` file.

#### Change the Prefix
- Default is `Slow Event:` and you can change to anything
```ruby
config.prefix = 'Bad events:'
```

#### Change the Duration value
- Default is `500ms`, and minimum is `50ms`
```ruby
config.alert_duration = 300
```

#### Change the Alert color
- Default is `YELLOW`
- Supported colors: `YELLOW`, `RED`, `GREEN`, `BLUE`, `MAGENTA`, `CYAN`, `WHITE`
```ruby
config.alert_color = ::Slow::Events::Format::BLUE
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ThanhKhoaIT/slow-events.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
