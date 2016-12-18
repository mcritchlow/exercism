module BookKeeping
  VERSION = 1
end
class Phrase
  attr_reader :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    words_in_phrase.each { |w| counts[w] += 1}
    counts
  end

  def words_in_phrase
    phrase.downcase.split(/'?[^a-zA-Z0-9_']+'?/)
  end
end
