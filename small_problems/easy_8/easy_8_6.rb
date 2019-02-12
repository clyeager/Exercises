#Input: two arguments, first is starting number, second is ending number
#Output: print numbers and words: see rules
=begin
Rules: output all numbers between the two numbers except:
divisible by 3 = 'Fizz'
divisible by 5 = 'Buzz'
divisible by 3 and 5 = 'FizzBuzz'
=end

def fizzbuzz(num1, num2)
  result = []
  for number in num1..num2
    case
    when number % 3 == 0 && number % 5 == 0
      result << 'FizzBuzz'
    when number % 3 == 0
      result << 'Fizz'
    when number % 5 == 0
      result << 'Buzz'
    else
      result << number
    end
  end
  print result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz