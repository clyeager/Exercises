=begin
Write a program that prompts the user for two positive integers, and then prints
 the results of the following operations on those two numbers: addition, subtraction,
 product, quotient, remainder, and power. Do not worry about validating the input.
=end

puts "Please enter the first number:"
number_one = gets.chomp.to_i

puts "Please enter the second number:"
number_two = gets.chomp.to_i

puts "#{number_one} + #{number_two} is #{number_one + number_two}"
puts "#{number_one} - #{number_two} is #{number_one - number_two}"
puts "#{number_one} * #{number_two} is #{number_one * number_two}"
puts "#{number_one} / #{number_two} is #{number_one / number_two}"
puts "#{number_one} % #{number_two} is #{number_one % number_two}"
puts "#{number_one} ** #{number_two} is #{number_one ** number_two}"