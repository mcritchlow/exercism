class SumOfMultiples
  attr_reader :multiples
  def initialize(*args)
    @multiples = args
  end

  def to(number)
    multiples.map do |m|
      list_of_multiples(m, number)
    end.reduce(:+).uniq.reduce(:+)
  end

  def list_of_multiples(multiple, number)
    number_of_multiples = number.div(multiple)
    (1..number_of_multiples).each_with_object([0]) do |i, list|
      product = multiple * i
      list << product unless product >= number
    end
  end
end
