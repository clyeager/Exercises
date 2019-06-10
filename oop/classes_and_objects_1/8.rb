#add a setter method and rename kitty to Luna

class Cat
  attr_reader :name
  attr_writer :name

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