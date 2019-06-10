#What is wrong with the code and how would you fix it?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

#The problem is that using the private method does not allow the use of self. I would
#change this to protected instead of private or take out the 'self' receiver.