#Input: integer
#Output: string representation
#Rules: if the number is positive add a + to the beginning, if - keep the - at beginning

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}
    
def signed_integer_to_string(integer)
  if integer < 0
    integer = integer * -1
    number_array = integer.digits.reverse
    string_array = number_array.map { |num| DIGITS[num] }
  
    string_array.join.prepend('-')
  elsif integer == 0
    '0'
  else
    number_array = integer.digits.reverse
    string_array = number_array.map { |num| DIGITS[num] }
  
    string_array.join.prepend('+')
  end
end

p integer_to_signed_string(1234)
p integer_to_signed_string(0)
p integer_to_signed_string(-1234)