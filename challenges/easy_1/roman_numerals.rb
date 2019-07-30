class Integer
  def to_roman
    romans =[]

    arr = self.digits.each_with_index do |n, idx|
      case idx
      when 0 then romans << calculate_ones(n)
      when 1 then romans << calculate_tens(n)
      when 2 then romans << calculate_hundreds(n)
      when 3 then romans << 'M' * n
      end
    end

    romans.reverse.join
  end

  def calculate_hundreds(n)
    hundreds = {
      4 => 'CD', 5 => 'D', 6 => 'DC',
      7 => 'DCC', 8 => 'DCCC', 9 => 'CM'
    }

    return ('C' * n) if n < 4
    hundreds[n]
  end

  def calculate_tens(n)
    tens = {
      4 => 'XL', 5 => 'L', 6 => 'LX',
      7 => 'LXX', 8 => 'LXXX', 9 => 'XC'
    }

    return ('X' * n) if n < 4
    tens[n]
  end

  def calculate_ones(n)
    ones = {
      4 => 'IV', 5 => 'V', 6 => 'VI',
      7 => 'VII', 8 => 'VIII', 9 => 'IX'
    }

    return ('I' * n) if n < 4
    ones[n]
  end
end