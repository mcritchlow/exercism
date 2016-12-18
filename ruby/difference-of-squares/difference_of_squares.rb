module BookKeeping
  VERSION = 3
end
class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    1.upto(number).reduce(:+)**2
  end

  def difference
    return 0 if @number == 0
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    1.upto(number).map { |n| n**2 }.reduce(:+)
  end
end
