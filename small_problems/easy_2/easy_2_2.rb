=begin
Build a program that asks a user for the length and width of a room in meters and 
then displays the area of the room in both square meters and square feet.
Note: 1 square meter == 10.7639 square feet
Do not worry about validating the input at this time.
=end


puts "What is the length of the room?"
length = gets.chomp.to_f
puts "What is the width of the room?"
width = gets.chomp.to_f

area_square_meters = length * width
area_square_feet = area_square_meters * 10.7639

puts "The area is #{area_square_meters} square meters (#{area_square_feet} square feet)."