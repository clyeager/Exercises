#create a Person class with an instance variable @secret
#use a setter to add a value and getter to print @secret

class Person
  attr_accessor :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret