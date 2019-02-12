#Input: positive integer and a boolean
#Output: integer
#Rules: calculate bonus (half of salary) for a given salary
#If boolean is false, bonus is 0

def calculate_bonus(num, boolean)
  if boolean == true
    bonus = num / 2
  else
    bonus = 0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000