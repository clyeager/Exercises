#Input: integer
#Output: integer index of the first Fibonacci number that has the number of digits in argument

def find_fibonacci_index_by_length(n)
  numbers = []
  start_num = 1
  second_num = 1
  index = nil
  until index
    temp_num = second_num
  second_num =  start_num + second_num
  start_num = temp_num
  numbers << second_num.to_s
  index = numbers.find_index { |num| num.size == n }
  end
  index += 3 # Add 3, 1 for starting num, 1 for ending num, 1 because #find_index starts at idx 0
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(3) == 12
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

#Another way

def find_fibonacci_index_by_length(n)
  idx1 = 1
  idx2 = 2
  num1 = 1
  num2 = 1
  until num2.to_s.length == n
    temp = num2
    num2 = num1 + num2
    num1 = temp
    idx1 += 1
    idx2 += 1
  end
  p idx2
end

find_fibonacci_index_by_length(10000)
