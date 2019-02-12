#Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_go = retirement_age - age
retirement_year = current_year + years_to_go

puts "We are in #{current_year}, you will retire in #{retirement_year}."
puts "You only have #{years_to_go} years to go!"