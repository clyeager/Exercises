#Write a method that returns a list of all of the divisors of the positive 
#integer passed in as an argument

def divisors(n)
  result = []
  (1..n).each { |num| result << num if n % num == 0 }
  result
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891]