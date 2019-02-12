#Input: expression
#Output: boolean, true if one argument is true false otherwise

def xor?(boolean1, boolean2)
  (boolean1 == true && boolean2 == false) || (boolean1 == false && boolean2 == true)
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)