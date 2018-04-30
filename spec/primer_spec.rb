require 'pry'

RSpec.describe Primer do
  describe "Instance methods" do
    # n = rand(1..100)
    n = 10
    primer = Primer.new n

    describe "#get_primes" do
      it "returns an array the size of n" do
        expect(primer.send(:get_primes)).to be_an_instance_of(Array)
        expect(primer.send(:get_primes).length).to eq(n)
      end
    end

    describe '#multiplication_table' do
      it "returns an array" do
        expect(primer.send(:multiplication_table)).to be_an_instance_of(Array)
      end

      it "the amount of rows equals the number of primes plus 1 for the header" do
        expect(primer.send(:multiplication_table).size).to eq(n+1)
      end
    end

    describe '#display_table' do
      it 'prints to STDOUT' do
        expect{primer.display_table}.to output(/1/).to_stdout
      end
    end
  end

  describe "Class methods" do
    describe "#isPrime?" do
      it "determines if a number is prime" do
        primes = [2, 3, 5, 7]
        non_primes = [1, 4, 6, 8, 9, 10]

        primes.each do |prime_num|
          expect(prime_num.prime?).to be true
        end

        non_primes.each do |non_prime_num|
          expect(non_prime_num.prime?).to be false
        end
      end
    end
  end
end
