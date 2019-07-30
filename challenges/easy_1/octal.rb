class Octal
  def initialize(n)
    @octal_arr =  n.match(/[^0-7]/) ? n : n.to_i.digits
  end

  def to_decimal
    return 0 if @octal_arr.is_a?(String)
    decimal = (@octal_arr.each_with_index.map { |num, idx| num * 8**idx }).sum
  end
end