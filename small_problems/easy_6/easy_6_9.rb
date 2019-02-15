#Input: array and a search value
#Output: boolean, true if search value is in array, false if not
#Rules: No Array#include?

def include?(arr, n)
  arr.find { |el| return true if el == n }
  false
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false