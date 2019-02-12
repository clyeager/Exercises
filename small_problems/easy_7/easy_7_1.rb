#Input: two arrays
#Output: new array containing all elements in alteration
#Rules: arrays are non-empty
#arrays have same number of elements

def interleave(arr1, arr2)
  combo_array = []
  index = 0
  until index == arr1.size
    combo_array << arr1[index] << arr2[index]
    index += 1
  end
  combo_array
end

interleave([1, 2, 3], ['a', 'b', 'c'])