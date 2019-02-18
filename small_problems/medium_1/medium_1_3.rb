#Input: integer
#Output: maximum rotation of integer
#Rules: you do not have to handle multiple 0's

def max_rotation(number)
  string_num = number.to_s
  string_num.length.times do |digit|
    num = string_num[digit]
    string_num.delete!(num)
    string_num << num
  end
  string_num.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845