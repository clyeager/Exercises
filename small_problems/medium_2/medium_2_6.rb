#Input: three integer angles of a triangle
#Output: symbol
#Rules: symbol will be :right, :obtuse, :acute, or :invalid
#No float inputs and assume arguments are degrees

def triangle(s1, s2, s3)
  sides = [s1, s2, s3]
  return :invalid if sides.any?(0) || sides.reduce(:+) < 180
  return :acute if (sides.select { |s| s < 90 }).count == 3
  return :right if (sides.select { |s| s == 90 }).count == 1
  :obtuse
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid