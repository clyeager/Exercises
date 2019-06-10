#add a parameter to #initialize that provides a name for the Cat object

class Cat
  def initialize(name)
    @name = name
    puts "Hello, I'm #{@name} the cat!"
  end
end

kitty = Cat.new('Fluffy')