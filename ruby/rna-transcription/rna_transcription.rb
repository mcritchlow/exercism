module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    return '' unless Complement.valid_strand?(strand)
    strand.tr('CGTA', 'GCAU')
  end

  def self.valid_strand?(strand)
    strand.chars.all? { |c| %w( C G T A ).include?(c) }
  end
end
