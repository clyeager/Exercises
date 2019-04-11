#Input: integer lengths of the three sides of a triangle
#Output: symbol; :equilateral, :isosceles, :scalene, or :invalid
#Rules: Triangle is valid if sum of two shorter side lengths is greater than longest side
#All sides must have lengths greater than 0

def triangle(s1, s2, s3)
  sides = [s1, s2, s3]
  return :invalid if sides.any?(0) || sides.max > sides.reduce(:+) - sides.max
  type_of_triangle(sides)
end

def type_of_triangle(array)
  return :equilateral if array[0].eql?(array[1]) && array[1].eql?(array[2])
  return :scalene if array.uniq.size == 3
  :isosceles
end

triangle(3, 3, 3)
triangle(3, 3, 1.5)
triangle(3, 4, 5)
triangle(0, 3, 3)
triangle(3, 1, 1)