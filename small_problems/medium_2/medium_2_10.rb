#Input: integer
#Output: integer
#Rules: computer the difference between the square of the sum of the first n integers
#And the sum of the squares of the first n integers

def sum_square_difference(n)
  sum = 0
  sum_square = (1.upto(n).reduce(:+))
  (1..n).each { |n| sum += n ** 2 }
  sum_square**2 - sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150