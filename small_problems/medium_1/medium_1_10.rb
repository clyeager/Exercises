#Write a method that returns the last digit of the nth Fibonacci number

def fibonacci_last(n)
  return n if n <= 1

  one = 1
  two = 1

  fib_nums = []
  fib_nums << one << two
  n = n % 60

  until fib_nums.size == n
    three = one + two
    one = two
    two = three
    fib_nums << two
  end
  two % 10
end

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4