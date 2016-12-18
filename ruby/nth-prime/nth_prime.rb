module BookKeeping
  VERSION = 1
end
class Prime
  BASE_PRIME = 2
  def self.nth(number)
    raise ArgumentError if number == 0
    return BASE_PRIME if number == 1
    prime.first(number).last
  end

  def self.prime
    (BASE_PRIME..Float::INFINITY).lazy.select do |x|
      (BASE_PRIME..(Math.sqrt(x).floor)).to_a.none? { |i| x % i == 0 }
    end
  end
end
