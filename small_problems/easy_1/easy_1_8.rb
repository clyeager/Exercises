#Input: array containing integers
#Output: integer average of all numbers in the array
#Rules: array will not be empty and always positive

def average(array)
  array.sum.fdiv(array.size)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40