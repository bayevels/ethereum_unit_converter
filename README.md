# EthereumUnitConverter

Ethereum unit converter in Ruby
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ethereum_unit_converter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ethereum_unit_converter

## Usage

### Convert from unit to unit
```ruby
# EthereumUnitConverter.convert(amount, unit = 'wei', to_unit = 'ether')
EthereumUnitConverter.convert(10000, 'wei', 'eth') # "0.00000000000001"
EthereumUnitConverter.convert(1, 'eth', 'wei') # "1000000000000000000.0"
EthereumUnitConverter.convert(1, 'eth', 'tether') # "0.000000000001"
EthereumUnitConverter.convert(100, 'ada', 'eth') # "0.0000000000001"
```
### Supported Units
```
  UNITS = {
    wei: 1,
    kwei: 1000,
    ada: 1000,
    femtoether: 1000,
    mwei: 1_000_000,
    babbage: 1_000_000,
    picoether: 1_000_000,
    gwei: 1_000_000_000,
    shannon: 1_000_000_000,
    nanoether: 1_000_000_000,
    nano: 1_000_000_000,
    szabo: 1_000_000_000_000,
    microether: 1_000_000_000_000,
    micro: 1_000_000_000_000,
    finney: 1_000_000_000_000_000,
    milliether: 1_000_000_000_000_000,
    milli: 1_000_000_000_000_000,
    ether: 1_000_000_000_000_000_000,
    eth: 1_000_000_000_000_000_000,
    kether: 1_000_000_000_000_000_000_000,
    grand: 1_000_000_000_000_000_000_000,
    einstein: 1_000_000_000_000_000_000_000,
    mether: 1_000_000_000_000_000_000_000_000,
    gether: 1_000_000_000_000_000_000_000_000_000,
    tether: 1_000_000_000_000_000_000_000_000_000_000
  }

```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bayevels/ethereum_unit_converter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
