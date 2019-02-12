#Input: two arrays, each a list of numbers
#Output: new array containing product of each pair with same index
#Rules: both arrays have same number of elements

def multiply_list(arr1, arr2)
  combo = []
  arr1.each_with_index do |n, i|
  combo << (n * arr2[i])
  end
  combo
end

multiply_list([3, 5, 7], [9, 10, 11])