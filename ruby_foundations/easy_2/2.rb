#create an Array#zip method, for two arrays with the same number of elements

def zip(arr1, arr2)
  new_arr = []
  arr1.each_with_index { |el, idx| new_arr << [el, arr2[idx]] }
  new_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]