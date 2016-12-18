module BookKeeping
  VERSION = 2
end

$robots = []
class Robot
  attr_reader :name
  def name
    @name ||= mint_name
  ensure
    cache_name
  end

  def cache_name
    $robots << @name unless $robots.include? @name
  end

  def mint_name(tries: 5)
    minted_name = 2.times.map { ('A'..'Z').to_a.sample }.join('') +
      3.times.map { (1..9).to_a.sample }.join('')
    raise if $robots.include? minted_name
    minted_name
  rescue
    tries -= 1
    retry if tries > 0
    raise NamingConflictError
  end

  def reset
    @name = nil
    name
  end
end

class NamingConflictError < Exception
end
