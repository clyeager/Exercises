#Input: array of numbers
#Output: array with same number of elements, where each has running total

def running_total(array)
  total = 0
  array.map { |num| total += num }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []