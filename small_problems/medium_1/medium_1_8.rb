#Create a recursive method for calculating the nth Fibonacci number

def fib(n)
  n <= 1 ? n : fib(n - 1) + fib(n - 2)
end

fib(1)
fib(2)
fib(3)
fib(4)
fib(5)
fib(12)
fib(20)