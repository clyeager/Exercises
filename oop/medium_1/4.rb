#create a circular queue

class CircularQueue
  attr_accessor :queue

  def initialize(size)
    @queue = Array.new(size)
  end

  def enqueue(n)
    shift
    if queue.count(nil) == 0
      queue.delete_at(0)
      queue.push(n)
    else
      queue[queue.find_index(nil)] = n
    end
  end

  def dequeue
    return nil if queue.all?(nil)
    shift
    queue.push(nil)
    if queue.count(nil) == 0
      queue.delete_at(0)
    else
      queue.delete_at(queue.find_index { |el| !el.nil? })
    end
  end

  private

  def shift
    self.queue = (queue.partition { |el| !el.nil? }).flatten
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil


