module Comparable

  def >(other_home)
    price > other_home.price
  end

  def <(other_home)
    price < other_home.price
  end
end

class House
  attr_reader :price

  include Comparable

  def initialize(price)
    @price = price
  end

  def self.to_s
    @price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

#create one new method for this output:
#Home 1 is cheaper
#Home 2 is more expensive