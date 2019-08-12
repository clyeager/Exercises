class PhoneNumber
  def initialize(number)
    @has_letters = true if number.match(/[a-z]/i)
    @number = number.gsub(/[\D]/, '')
    @size = @number.size
  end

  def number
    return '0000000000' if invalid?
    return valid_sans_first_digit || @number if valid?
  end

  def area_code
    @number[0..2]
  end

  def to_s
    valid_sans_first_digit ? "(%s) %s-%s" %  [@number[1..3], @number[4..6], @number[7..-1]] :
      "(%s) %s-%s" %  [@number[0..2], @number[3..5], @number[6..-1]]
  end

  private

  def invalid?
    (@size == 11 && @number[0] != '1') || @size < 10 || @size > 11 || @has_letters
  end

  def valid?
    @size == 10 || valid_sans_first_digit
  end

  def valid_sans_first_digit
    @size == 11 && @number[0] == '1' ? @number[1..-1] : nil
  end
end