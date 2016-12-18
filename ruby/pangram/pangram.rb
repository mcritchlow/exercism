module BookKeeping
  VERSION = 2
end
class Pangram
  def self.is_pangram?(string)
    string.downcase!
    ('a'..'z').all? { |letter| string.include? letter }
  end
end
