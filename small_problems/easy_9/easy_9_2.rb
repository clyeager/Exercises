#Input: number
#Output: number
#Rules: double number has an even number of digits, left side and right are the same
#If argument is a double number return as is, otherwise double it

def double(number)
  number * 2
end

def twice(number)
  half_count = number.to_s.length / 2.0
  
  if number.to_s.length.even?
    first_half, second_half = number.to_s.slice(0, half_count), number.to_s.slice(half_count, half_count)
    return number if first_half == second_half
    double(number)
  else
    double(number)
  end
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10