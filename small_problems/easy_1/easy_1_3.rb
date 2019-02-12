#Input: positive integer
#Output: list of digits in the number

def digit_list(number)
  number.digits.sort
end

puts digit_list(1234)
puts digit_list(1)
puts digit_list(34972347823