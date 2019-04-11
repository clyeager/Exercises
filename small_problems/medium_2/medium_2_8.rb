#Input: integer
#Output: integer greater than argument
#Rules: return next featured number, which is: odd, a multiple of 7, and digits occur only once
#Return an error message if such a number does not exist

def featured(num)
  loop do
    num += 1
    until num.odd? && num % 7 == 0
      num += 1
    end
    return num if num.digits.uniq.size == num.digits.size
    break if num >= 9_876_543_210
  end
  puts 'Error: no such number!'
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
featured(9_999_999_999)