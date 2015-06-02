RSpec.describe Multiprime do

  describe ".primes" do

    it "returns 2, 3, 5 & 7 if 4 numbers are taken" do
      expect( described_class.primes.take(4).to_a ).to eq [2,3,5,7]
    end

  end

  describe ".table" do

    it "returns a range of 3 prime numbers and a its multiplication matrix" do
      matrix, range = *described_class.table(3)
      expect( matrix ).to eq([
        [4,6,10],
        [6,9,15],
        [10,15,25]
      ])
      expect( range ).to eq([2,3,5])
    end

  end

end