class Bob
  def self.hey(remark)
    if silent?(remark)
      'Fine. Be that way!'
    elsif yelling?(remark)
      'Whoa, chill out!'
    elsif asking_question?(remark)
      'Sure.'
    else
      'Whatever.'
    end
  end
  def self.silent?(remark)
    remark.strip.empty?
  end
  def self.asking_question?(remark)
    remark.end_with?('?')
  end

  def self.yelling?(remark)
    return false unless contains_alpha?(remark)
    !remark.upcase!
  end

  def self.contains_alpha?(remark)
    !!remark.index(/[[:alpha:]]/)
  end
end
