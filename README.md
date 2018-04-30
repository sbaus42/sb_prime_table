# SbPrimeTable

## Code Challenge:

This is a program that prints out a multiplication table of the first N prime numbers.

- Run from command line and print a table to STDOUT
- The first row and column of the table will have the N primes
- The user is allowed to specify different table sizes through command line options. In case of no argument passed into the program, the first 10 primes will be used by default

### Addressing Notes:

- In terms of complexity, the major complexity issue is creating the multiplication table. Each entry in the table requires an input so for each value extra value in `n`, there will be a need for an extra row and column. My initial approach was to use a dictionary that used the index as a reference to the multiplication. With that index I would be able to skip computing the values for the lower triangle in the table. The approach was not entirely better since it doesn't prevent the code from looping twice over the primes array and performing assignments at the very least. In other words, the method `#multiplication_table` has O(n^2) complexity.

- While not having used the Prime class from stdlib, I am acquainted with some of the techniques used (i.e. Monkey Patching). I normally prefer not to monkey patch classes as important as Integer as I did in `lib/primer:60`, but considering this is done by the Prime class, I decided to go ahead with the patch.

- In terms of running speed when called with `n=10`, `n=100`, and `n=1000`, we can see from [time_profile](time_profile.txt) that each step increases the amount of calls by 2 orders of magnitude when calling methods such as `#display_table` and `#multiplication_table`.

- The `#multiplication_table` and `#display_table` could have been joined into a single method that had the formatted output. I did however decided against this considering different formats could be selected by extracting the display table method into its own.

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
Running the command without arguments will result in a 10x10 table. Large values (i.e. above the order of 1000) will take long to compute. Stop the program by pressing `ctrl + c` in your keyboard.

## Dependencies

To run tests and modify the existing code you must have Bundler installed. To install in case of not having it run `gem install bundler` from your command line.
Once the installation is complete, clone/check out this repo into your local machine and follow the steps in the following section.

Gem dependencies will be installed as part of the following steps.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Contributing is not permitted as this is an individual code challenge for the author Santiago Baus

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
