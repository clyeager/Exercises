#create a class named Cat that tracks the number of cats instantiated

class Cat
  @@total = 0

  def initialize
    @@total += 1
  end

  def self.total
    puts "There are #{@@total} cats!"
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total