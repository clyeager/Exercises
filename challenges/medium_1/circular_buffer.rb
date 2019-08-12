class CircularBuffer
  def initialize(slots)
    @slots = slots
    @buffer = []
  end

  def write(string)
    return if string.nil?
    raise BufferFullException.new('Buffer is full') if buffer_full?
    @buffer.push(string)
  end

  def write!(string)
    begin
      write(string)
    rescue BufferFullException => e
      puts e.message + ' :oldest data will be overridden'
      @buffer.shift
      @buffer.push(string)
    end
  end

  def read
    raise BufferEmptyException.new('Empty Buffer') if @buffer.empty?
    @buffer.shift
  end

  def clear
    @buffer = []
  end

  private

  def buffer_full?
    @buffer.size == @slots
  end

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end
end