def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

=begin
The problem here is that although the decrease method call returns the correct number,
 the assignment that takes place inside of the method is restricted to the method only.
 Therefore we need to save the resulting number into the 'counter' variable outside of the method.
 This reassigns the variable to the new number, rather than staying at counter = 10 forever.
=end

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'