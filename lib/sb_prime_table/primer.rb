class Primer
  attr_accessor :n_primes, :n

  def initialize n
    @n = n
    @n_primes = get_primes
  end


  class << self
    def isPrime? n
      return false if n == 1
      (2..Math.sqrt(n)).none? {|f| n % f == 0}
    end
  end

  private

  def get_primes
    []
  end
end
