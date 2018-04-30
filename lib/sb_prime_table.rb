require "sb_prime_table/version"
require "sb_prime_table/primer"

module SbPrimeTable
  # Your code goes here...
  def self.create_table n
    table = Primer.new(n).table
  end
end
