#Input: number
#Output: negative number if input = positive, and vice versa

def negative(num)
  return num * -1 if num > 0
  num
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0 