module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Fixnum
  ROMAN_NUM = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
       9 => "IX",
       5 => "V",
       4 => "IV",
       1 => "I"
  }
  def to_roman
    num = self
    ROMAN_NUM.map do |value, symbol|
      hits, num = num.divmod(value)
      symbol * hits
    end.join('')
  end
end
