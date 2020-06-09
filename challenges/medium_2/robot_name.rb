class Robot
  attr_reader :name

  @@all_robots = []

  def initialize
    @name = set_name
  end

  def set_name
    return @name if @name
    @name = ''
    2.times { @name << ('A'..'Z').to_a.sample }
    3.times { @name << (rand(0..9)).to_s }
    reset if @@all_robots.include?(@name)
    @@all_robots << @name
    @name
  end

  def reset
    @name = nil
    @@all_robots.delete(@name)
    set_name
  end
end
