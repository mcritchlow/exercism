module BookKeeping
  VERSION = 3
end
module BookKeeping
  VERSION = 3
end
class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError unless first_strand.length == second_strand.length
    first_strand.chars.each_index.count { |x| first_strand[x] != second_strand[x] }
  end
end
