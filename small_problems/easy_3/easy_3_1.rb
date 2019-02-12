=begin
Write a program that solicits 6 numbers from the user, then prints a message that describes 
whether or not the 6th number appears amongst the first 5 numbers.
=end

numbers = []

puts "Enter the first number:"
numbers << gets.chomp.to_i

puts "Enter the second number:"
numbers << gets.chomp.to_i

puts "Enter the third number:"
numbers << gets.chomp.to_i

puts "Enter the fourth number:"
numbers << gets.chomp.to_i

puts "Enter the fifth number:"
numbers << gets.chomp.to_i

puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "#{last_number} is included in #{numbers}."
else
  puts "#{last_number} is not included in #{numbers}."
end