# DepCollector

Ruby gem that collect all
local gems in your project and send them to a web server to determine the system libraries you
need to install .

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sys-uname'
gem 'dep_collector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dep_collector

## Usage

- Displays the required system libraries to
install all your dependencies
- Collect information of your working Operating system

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RaafatSobhy/dep_collector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DepCollector project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/dep_collector/blob/master/CODE_OF_CONDUCT.md).

## Demo

[Demo Link](https://github.com/RaafatSobhy/dep_collector_demo)