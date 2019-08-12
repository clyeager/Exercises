class Luhn
  def initialize(num)
    @num = num
    @digits = addends
  end

  def addends
    digits = []
    @num.digits.each_with_index do |digit, idx|
      if idx.even?
        digits << digit if idx.even?
      else
        (digit * 2) > 9 ? digits << digit * 2 - 9 : digits << digit * 2
      end
    end
    digits.reverse
  end

  def checksum
    @digits.sum
  end

  def self.create(number)
    new_number = nil
    (0..9).each do |num|
      new_number = number.to_s.concat(num.to_s).to_i
      break if Luhn.new(new_number).valid?
    end
    new_number
  end

  def valid?
    checksum % 10 == 0
  end
end