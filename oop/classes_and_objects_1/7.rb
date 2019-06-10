#add a getter method #name and invoke in place of @name

class Cat
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greet
    puts "Hello, I'm #{name} the cat!"
  end
end

kitty = Cat.new('Fluffy')
kitty.greet

#OR

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, I'm #{name} the cat!"
  end
end

kitty = Cat.new('Fluffy')
kitty.greet