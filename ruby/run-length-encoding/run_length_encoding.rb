module BookKeeping
  VERSION = 2
end
class RunLengthEncoding
  def self.encode(input)
    grouped_characters = input.chars.chunk_while {|i,j| i == j }.to_a
    grouped_characters.map do |a|
      next a[0] if a.length == 1
      a.length.to_s + a[0]
    end.join
  end

  def self.decode(input)
    grouped_characters = input.scan(/(\d*)(\D{1})/)
    grouped_characters.map do |number,char|
      next char if number.empty?
      char * number.to_i
    end.join
  end
end
