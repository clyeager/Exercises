#Input: array
#Output: new array with elements reversed
#Rules: No Array#reverse or Array#reverse!

def reverse!(array)
new_array = []
array.size.times { |n| new_array << array.pop }
new_array
end

reverse!([1,2,3,4])
reverse!(%w(a b e d c))