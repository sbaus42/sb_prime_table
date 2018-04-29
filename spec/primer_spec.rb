RSpec.describe Primer do
  describe "Instance methods" do
    n = rand(1..100)
    primer = Primer.new n

    describe "#get_primes" do
      it "returns an array the size of n" do
        expect(primer.send(:get_primes)).to be_an_instance_of(Array)
        expect(primer.send(:get_primes).length).to eq(n)
      end
    end
  end

  describe "Class methods" do
    describe "#isPrime?" do
      it "determines if a number is prime" do
        primes = [2, 3, 5, 7]
        non_primes = [1, 4, 6, 8, 9, 10]

        primes.each do |prime_num|
          expect(described_class.isPrime? prime_num).to be true
        end

        non_primes.each do |non_prime_num|
          expect(described_class.isPrime? non_prime_num).to be false
        end
      end
    end
  end
end
