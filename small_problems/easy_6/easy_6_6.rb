#Input: two arrays
#Output: array containing all values, no duplicates

def merge(arr1, arr2)
  array = arr1 + arr2
  array.uniq!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]