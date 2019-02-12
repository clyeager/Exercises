def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

=begin
This error means that we are caught in an infinite recursion loop, which has gone over our stack limit due
 to the fact that we did not create a base case where the program will end when a condition is met.
 We can use return if n == 0, which will return from the method when n is 0, instead of continuing
 infinitely into negative numbers.
Further exploration: If the from_array runs out of things to move into the to_array, nil will
 takes its place for each attempt at a move.
=end