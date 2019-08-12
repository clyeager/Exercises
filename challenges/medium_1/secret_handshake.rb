class SecretHandshake

  CONVERSION = {
    10000 => '', 1000 => 'jump', 100 => 'close your eyes',
    10 => 'double blink', 1 => 'wink'
  }

  def initialize(decimal)
    @decimal = decimal
  end

  def commands
    commands = []
    return commands if @decimal.to_i == 0

    remainders = calculate_remainders
    binary = remainders.reverse.join.to_i
    reach_10000 = false

    CONVERSION.each do |key, value|
      if key <= binary && key == 10000
        reach_10000 = !reach_10000
        binary -= key
      elsif key <= binary
        binary -= key
        commands << value
      end
      break if binary <= 0
    end
    reach_10000 ? commands : commands.reverse
  end

  private 

  def calculate_remainders
    remainders = []
    q = @decimal.to_i

    until q == 0
      q, r = q.divmod(2)
      remainders << r
    end
    remainders
  end
end