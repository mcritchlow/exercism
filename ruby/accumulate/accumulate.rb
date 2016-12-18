module BookKeeping
  VERSION = 1
end
class Array
  def accumulate
    return self unless block_given?
    return self if self == []

    result = []
    self.each { |i| result << yield(i) }
    result
  end
end
