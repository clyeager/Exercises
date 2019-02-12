#Input: two integers
#Output: array
#Rules: first argument is a count, second is the first number of a sequence
#Return array containing same number of elements as count
#Values are multiples of starting number

def sequence(count, starting_num)
  array = []
  count.times do |n|
    array << starting_num * (n + 1)
  end
  array
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []