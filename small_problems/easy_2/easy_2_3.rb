=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
 The program must compute the tip and then display both the tip and the total amount of the bill.
=end


puts "What is the bill amount?"
bill = gets.chomp.to_f

puts "What percentage tip would you like to leave?"
tip_percentage = gets.chomp.to_f

tip_in_dollars = tip_percentage / 100 * bill
total_bill = tip_in_dollars + bill

puts "Your tip is #{tip_in_dollars}."
puts "Your total bill is #{total_bill}."