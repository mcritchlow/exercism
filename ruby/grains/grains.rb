class Grains
  FIRST_TERM = 1
  LAST_TERM = 64
  COMMON_RATIO = 2

  def self.square(number)
    FIRST_TERM * COMMON_RATIO**(number-1)
  end

  def self.total
    FIRST_TERM * ((1-COMMON_RATIO**LAST_TERM) / (1-COMMON_RATIO))
  end
end
