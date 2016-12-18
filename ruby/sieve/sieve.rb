require 'prime'
class Sieve
  attr_reader :number
  attr_reader :result
  def initialize(number)
    @number = number
    @result = Hash.new
    2.upto(number) do |n|
      @result[n] = false
    end
  end

  def primes
    2.upto(number) do |n|
      mark_primes(n)
    end
    result.keep_if {|k,v| !v }.keys
  end

  def mark_primes(n)
    (n+1).upto(number) do |i|
      result[i] = true if i % n == 0
    end
  end
end
