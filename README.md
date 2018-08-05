# Yukichi

You input Arabic numeral, put commas in every 3 digit and add Japanese yen if necessary.
And if you input Chinese numerals convert Arabic numeral, also the opposite operation is possible.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yukichi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yukichi

## Usage
```
Yukichi.new(5000000000000000).jpy_comma(true)
# => ¥5,000,000,000,000,000"
Yukichi.new("五千兆円").jpy_comma(true)
# => "¥5,000,000,000,000,000"
Yukichi.new(5000000000000000).to_k(true)
# => "五千兆円"
Yukichi.new("五千兆円").to_k(true)
# => "五千兆円"
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/yukichi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Yukichi project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/yukichi/blob/master/CODE_OF_CONDUCT.md).
