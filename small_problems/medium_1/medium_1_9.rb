#Rewrite your Fibonacci recursive method as a non-recursive method for speed and space purposes

def fib(n)
  return n if n <= 1

  one = 1
  two = 1

  fib_nums = []
  fib_nums << one << two

  until fib_nums.size == n
    three = one + two
    one = two
    two = three
    fib_nums << two
  end
  fib_nums[-1]
end

fib(20) == 6765
fib(100) == 354224848179261915075
fib(100_001) # => 4202692702.....8285979669707537501
