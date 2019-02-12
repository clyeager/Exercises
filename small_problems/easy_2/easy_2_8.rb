=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers between 1 and 
the entered integer.
=end

puts "Please enter an integer greater than 0"
integer = gets.chomp.to_i

puts "Would you like to compute the sum (enter 's') or the product (enter 'p')?"
choice = gets.chomp

product = integer.downto(1).inject(:*)
sum = integer.downto(1).inject(:+)

if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  puts "The product of the integers between 1 and #{integer} is #{product}"
end



#Another Solution

integer = ''
choice = ''

def valid_number?(number)
  number.to_s.to_i == number && number > 0
end

loop do
puts "Please enter an integer greater than 0"
integer = gets.chomp.to_i

break if valid_number?(integer)
puts "Please enter a number greater than 0!"
end

loop do
puts "Would you like to compute the sum (enter 's') or the product (enter 'p')?"
choice = gets.chomp

break if choice == 'p' || choice == 's'

puts "Please enter a valid option!"
end

product = integer.downto(1).inject(:*)
sum = integer.downto(1).inject(:+)

if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  puts "The product of the integers between 1 and #{integer} is #{product}"
end