#Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

(1..99).to_a.each { |num| puts num if num.even? }