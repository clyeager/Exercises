#Input: positive integer n
#Output: right triangle whose sides have n stars
#Rules: hypotenuse should have one end at lower-left and other end at upper-right

def triangle(n)
  for num in 1..n do
    puts ' ' * (n - num) + ('*' * num)
  end
end

triangle(5)
triangle(7)
triangle(4)