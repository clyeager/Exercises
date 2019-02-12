#Input: positive integer
#Output: integer sum of digits

def sum(n)
  n.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45