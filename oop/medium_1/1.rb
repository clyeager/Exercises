#modify so flip_switch and switch= are private methods
#Further exploration-add a getter for @switch and a method to use it

class Machine
  attr_reader :switch

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def show_state
    puts switch
  end

  private

  attr_writer :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

washer = Machine.new
washer.start
washer.show_state
