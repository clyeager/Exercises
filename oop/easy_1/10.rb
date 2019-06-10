#fix the following classes to have a superclass and inherit appropriate behaviors

class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{@make} #{@model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

honda = Car.new('Honda', 'CRV')
puts honda
puts honda.wheels
ford = Truck.new('Ford', 'Raptor', '4000')
puts ford
puts ford.wheels
harley = Motorcycle.new('Harley', 'Freedom')
puts harley
puts harley.wheels
