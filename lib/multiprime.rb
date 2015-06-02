module Multiprime

  VERSION = "0.0.1"

  def self.table(size)
    range = primes.take(size).to_a
    return range.map { |x| range.map { |y| x * y } }, range
  end

  def self.primes
    2.upto(Float::INFINITY).lazy.select { |n| 2.upto(Math.sqrt(n)).none? { |i| n % i == 0 } }
  end

end