class Trinary
  def initialize(trinary_string)
    @string = trinary_string
  end

  def to_decimal
    return 0 if @string.match(/[^0-2]/)

    arr = @string.to_i.digits
    (arr.each_with_index.map { |n, idx| n * (3**idx) }).sum
  end
end