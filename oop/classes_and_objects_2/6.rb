#create a Cat class that prints a greeting, including name and color

class Cat
  attr_reader :name

  COLOR = 'brown'

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, I'm a #{COLOR} cat and my name is #{name}!"
  end
end

kitty = Cat.new('Fluffy')
kitty.greet
