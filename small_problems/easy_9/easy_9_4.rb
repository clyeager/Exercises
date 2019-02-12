#Input: integer
#Output: array of integers in sequence between one and argument
#Rules: argument is always a valid integer greater than 0

def sequence(num)
  sequence = []
  for nums in 1..num
    sequence << nums
  end
  sequence
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]