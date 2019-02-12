#Input: array of numbers
#Output: sum of the sums of each leading subsequence
#Rules: array contains at least one number

def sum_of_sums(array)
  index = 0
  count = 1
  total_sum = 0
  
  until count == array.size + 1
    total_sum += array.slice(index, count).sum
    count += 1
  end
  total_sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35