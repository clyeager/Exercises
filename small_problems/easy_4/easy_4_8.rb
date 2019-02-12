#Input: String of digits
#Output: Number as integer
#Rules: If preceded by a + or no sign, return positive
#If preceded by a -, return negative
#Assume all input is valid

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def stripped_number_string(string)
  array = string.split(//) 
    if array[0] == '-' || array[0] == '+'
     array.delete(array[0])
    end
  array.join
end

def positive_integer?(string)
  true unless string[0] == '-'
end
    
def string_to_integer(string)
  stripped_string = stripped_number_string(string)
  
  digits = stripped_string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  
  if positive_integer?(string)
    return value
  else
    return value * -1
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100