#replace setter and getter methods using Ruby shorthand

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, I'm #{name} the cat!"
  end
end

kitty = Cat.new('Fluffy')
kitty.greet
kitty.name = 'Luna'
kitty.greet