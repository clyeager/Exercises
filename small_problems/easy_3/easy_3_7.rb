#Input: array
#Output: array containing every other element from input array

def oddities(array)
  odd_array = []
  array.each_with_index do |num, idx|
    odd_array << num if idx.even?
  end
  odd_array
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []