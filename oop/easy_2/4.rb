#write a class to display ABC, xyz when following code is run

class Transform
  attr_reader :letters

  def initialize(letters)
    @letters = letters
  end

  def self.lowercase(letters)
    letters.downcase
  end

  def uppercase
    letters.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')