# SbPrimeTable

Code Challenge:

This is a program that prints out a multiplication table of the first N prime numbers.

- Run from command line and print a table to STDOUT
- The first row and column of the table will have the N primes
- The user is allowed to specify different table sizes through command line options. In case of no argument passed into the program, the first 10 primes will be used by default

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sb_prime_table'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sb_prime_table

## Usage

Once the gem has been installed, you should be able to run the `sb_prime_table` command from the command line and get a prime multiplication table.
Running the command without arguments will result in a 10x10 table. Large values (i.e. above the order of 1000) will take long to compute. Stop the program by pressing `ctrl + c` in your keyboard

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Contributing is not permitted as this is an individual code challenge for the author Santiago Baus

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
