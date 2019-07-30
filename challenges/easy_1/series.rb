class Series
  def initialize(string)
    @num_arr = string.chars.map(&:to_i)
  end

  def slices(n)
    fail(ArgumentError.new, 'Give me a legitimate number!!') if n > @num_arr.size
    @num_arr.each_cons(n).to_a
  end
end
