class Series
  attr_reader :series
  def initialize(series)
    @series = series
  end

  def slices(n)
    raise ArgumentError if n > series.length
    series.chars.map(&:to_i).each_cons(n).to_a
  end
end
