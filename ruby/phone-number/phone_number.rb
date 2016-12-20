class PhoneNumber
  attr_reader :number
  INVALID_NUMBER = '0000000000'
  VALID_LENGTH = 10

  def initialize(n)
    @number = sanitize(n)
  end

  def sanitize(n)
    return INVALID_NUMBER if contains_non_digits?(n)
    n = strip_punctuation(n)
    n = process_country_code(n)
    return INVALID_NUMBER unless valid_length?(n)

    n
  end

  def process_country_code(n)
    if n.length == 11 && n.start_with?('1')
        n = n.slice(1, n.length)
    end
    n
  end

  def strip_punctuation(n)
    n.gsub(/\D/, '')
  end

  def valid_length?(n)
    n.length == VALID_LENGTH
  end

  def contains_non_digits?(n)
    !!n.index(/[a-zA-Z]/)
  end


  def area_code
    number.slice(0,3)
  end

  def central_office_code
    number.slice(3,3)
  end

  def line_number
    number.slice(6, 4)
  end

  def to_s
    "(#{area_code}) #{central_office_code}-#{line_number}"
  end
end
