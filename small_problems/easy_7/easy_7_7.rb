#Input: array of integers
#Output: string
#Rules: multiply all numbers in array, divide result by number of entries
#Print to 3 decimal places

def show_multiplicative_average(array)
  result = (array.reduce(:*)) / array.size.to_f
  puts "The result is #{format('%.3f' , result)}"
end

show_multiplicative_average([3, 5])

show_multiplicative_average([6])

show_multiplicative_average([2, 5, 7, 11, 13, 17])