require "sb_prime_table/version"
require "sb_prime_table/primer"

module SbPrimeTable
  # Your code goes here...
  def self.create_table n=10
    primer = Primer.new(n)
    primer.display_table
  end
end
