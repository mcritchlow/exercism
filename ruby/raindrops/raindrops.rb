module BookKeeping
  VERSION = 2
end
class Raindrops
  CONVERSION_RULES = { 'Pling' => 3, 'Plang' => 5, 'Plong' => 7 }.freeze

  def self.convert(number)
    conversion = Raindrops.apply_conversion_rules(number)
    return number.to_s if conversion.empty?
    conversion
  end

  def self.apply_conversion_rules(number)
    CONVERSION_RULES.map do |key, value|
      key if number % value == 0
    end.join
  end
end
