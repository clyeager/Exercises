#Input: array
#Output: pair of nested arrays containing first and second half of array
#Rules: if original array has an odd number of elements, middle element goes in first array

def halvsies(array)
  result = []
  size = array.size
  if size.even?
    result << first_half = array.shift(size/2)
    result << second_half = array.shift(size/2)
  else
    result << first_half = array.shift(size/2+1)
    result << second_half = array.shift(size/2)
  end
end

halvsies([1, 2, 3, 4])
halvsies([1, 5, 2, 4, 3])
halvsies([5])
halvsies([])