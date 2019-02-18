#Input: an integer and a number(n)
#Output: integer with last n digits rotated
#Rules: n is always positive

def rotate_rightmost_digits(number, digit)
  string_number = number.to_s
  sliced_num = string_number[-digit]
  string_number.delete!(sliced_num)
  (string_number << sliced_num).to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917