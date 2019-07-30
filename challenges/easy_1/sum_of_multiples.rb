class SumOfMultiples

  @@nums_arr = [3, 5]

  def initialize(*nums)
    @nums_arr = nums
  end

  def self.to(n, instance_arr = nil)
    instance_arr.nil? ? arr = @@nums_arr : arr = instance_arr

    (arr.each_with_object([]) do |num, array|
      (num...n).each { |el| array << el if el % num == 0 }
    end).uniq.sum
  end

  def to(n)
    self.class.to(n, @nums_arr)
  end
end