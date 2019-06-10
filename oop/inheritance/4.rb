#modify #start_engine in Truck by appending 'Drive fast, please!'
#to the return value of #start_engine in Vehicle

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')