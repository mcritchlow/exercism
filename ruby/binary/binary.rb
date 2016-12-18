module BookKeeping
  VERSION = 3
end
class Binary
  def self.to_decimal(number)
    raise ArgumentError unless number =~ /^[01]+$/
    number.chars.reverse.each_with_index.map do |char, index|
      char.to_i * 2**index
    end.reduce(:+)
  end
end
