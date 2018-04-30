class Primer
  def initialize n=10
    @n = n
    @n_primes = get_primes
  end

  def display_table
    pad = @table.last.last.to_s.length + 2
    # This table just formats how it will look
    dt = @table.map do |row|
      row.map do |entry|
        entry.to_s.rjust pad
      end.push("\n").join()
    end

    puts dt
  end

  private

  def multiplication_table
    @table = []
    factors = [1, @n_primes].flatten

    factors.each do |row|
      slice = []
      factors.each do |col|
        slice.push(row * col)
      end
      @table.push(slice)
    end

    @table
  end

  def inefficient_method
    dictionary = {}
    table = []

    @n_primes.each_with_index do |value, i|
      slice = []
      @n_primes.each_with_index do |val, j|
        # Get a valid index
        # Check the dictionary for the index
        # If no value found in index, calculate the product
        # Put the calculated product in the array value
        dictionary["#{i} #{j+i}"] = value * val
      end
    end
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
    (2..Math.sqrt(self)).none? {|f| self % f == 0}
  end
end
