class Primer
  def initialize n=10
    unless n.respond_to?(:integer?) && n.integer?
      raise ArgumentError.new("Argument must be an Integer")
    end

    @n = n
    @n_primes = get_primes
    @table = multiplication_table
  end

  def display_table
    pad = @table.last.last.to_s.length + 2

    dt = @table.map do |row|
      row.map do |entry|
        entry.to_s.rjust pad
      end.push("\n").join()
    end

    puts "\n"
    puts dt
  end

  private

  def multiplication_table
    table = []
    factors = [1, @n_primes].flatten

    factors.each do |row|
      slice = []
      factors.each do |col|
        slice.push(row * col)
      end
      table.push(slice)
    end

    # Formatting to remove first row and column entry
    table[0][0] = " "
    table
  end

  def get_primes
    primes = []
    counter = 0

    (1..Float::INFINITY).each do |prospect|
      if prospect.prime?
        counter += 1
        primes.push prospect
      end

      break if counter == @n
    end
    primes
  end
end

class Integer
  def prime?
    return false if self == 1
    (2..Math.sqrt(self)).none? {|prospect| self % prospect == 0}
  end
end
