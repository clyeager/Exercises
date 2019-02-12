#Input: integer
#Output: boolean
#Rules: return true if number's absolute value is odd
#argument is always valid integer

def is_odd?(n)
  n.abs % 2 != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17) 