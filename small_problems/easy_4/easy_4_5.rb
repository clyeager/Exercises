#Input: integer
#Output: integer
=begin
Rules:
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
 and then computes the sum of those multiples. For instance, if the supplied number is 20, the result 
should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
=end

def sum_of_multiples(n)
  multiples_of_3_or_5 = []
  for i in 1..n
    if i % 3 == 0 || i % 5 == 0
    multiples_of_3_or_5 << i
    end
  end
  multiples_of_3_or_5.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168