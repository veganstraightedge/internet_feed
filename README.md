# InternetFeed

A small library to work with feeds from the internet.
Planned: RSS, Atom, JSON Feed, ActivityPub, et al.

## Installation

Install the gem and add to the application's `Gemfile` by executing:

```shell
bundle add internet_feed
```

If bundler is not being used to manage dependencies, install the gem by executing:

```shell
gem install internet_feed
```

## Usage

```ruby
InternetFeed.find from: 'https://example.com'
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/veganstraightedge/internet_feed. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/veganstraightedge/internet_feed/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the InternetFeed project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/veganstraightedge/internet_feed/blob/main/CODE_OF_CONDUCT.md).
