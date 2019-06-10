#add a greet method to print the greeting

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, I'm #{@name} the cat!"
  end
end

kitty = Cat.new('Fluffy')
kitty.greet