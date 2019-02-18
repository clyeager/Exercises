#Input: array
#Output: new array with first element moved to end of array
#Rules: No Array#rotate or Array#rotate!

def rotate_array(array)
  new_array = array.dup
  new_array.push(new_array.shift)
end

rotate_array([7, 3, 5, 2, 9, 1])
rotate_array(['a', 'b', 'c'])
rotate_array(['a'])

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true