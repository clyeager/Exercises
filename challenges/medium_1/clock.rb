#first attempt

class Clock
  def initialize(hour, minute = 0)
    @hr = hour
    @min = minute
  end

  def self.at(hour, minute = 0)
    new(hour, minute)
  end

  def == (other_clock)
    to_s == other_clock.to_s
  end

  def +(n)
    @min += n
    add_mins if @min > 59
    self
  end

  def -(n)
    @min -= n
    subtract_mins if @min < 0
    self
  end

  def to_s
    "%02d:%02d" %[@hr, @min]
  end

  protected

  def add_mins
    until @min <= 59
      @min -= 60
      @hr += 1
    end
    @hr -= 24 if @hr > 23
  end

  def subtract_mins
    until @min >= 0
      @min += 60
      @hr -= 1
    end
    @hr = 24 - (@hr.abs) if @hr < 0
  end

  attr_reader :hr, :min
end

#refactored

class Clock
  def initialize(hour, minute = 0)
    @hr = hour
    @min = minute
  end

  def self.at(hour, minute = 0)
    new(hour, minute)
  end

  def == (other_clock)
    to_s == other_clock.to_s
  end

  def +(n)
    total_mins = @min + (@hr * 60) + n
    @hr, @min = total_mins.divmod(60)
    @hr -= 24 if @hr > 23
    self
  end

  def -(n)
    total_mins = (@hr * 60) + @min - n
    @hr, @min = total_mins.divmod(60)
    @hr = 24 - (@hr.abs) if @hr < 0
    self
  end

  def to_s
    "%02d:%02d" %[@hr, @min]
  end

  protected

  attr_accessor :hr, :min
end