#What does this print? Fix the code so there are no surprises.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    @name.upcase!
    "My name is #{@name}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

#This prints Fluffy
#            My name is FLUFFY.
#            FLUFFY
#            FLUFFY

#Change to:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

#This prints Fluffy
#            My name is FLUFFY.
#            Fluffy
#            Fluffy

#Further exploration

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name #=> 42
puts fluffy #=> My name is 42.
puts fluffy.name #=> 42
puts name #=> 43

=begin
The call of 'puts fluffy.name' is able to use the integer 42 because of the to_s
call in the initialize method. This string version of 42 is used in the methods,
and therefore is output when calling to_s on our fluffy object. When we call
'puts name' we print 43 because this is the new integer value we reassigned to the
local name variable outside of the class.
=end
