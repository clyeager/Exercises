#How can we fix this class to be resistant to future problems?

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

#We can fix this by taking out attr_accessor, so that users can not
#change the data.

