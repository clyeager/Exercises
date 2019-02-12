cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map do |card|
    score(card)
  end

  sum += cards.sum
end

puts sum

=begin
The error occurs because we call .sum on cards. The cards array still holds an :ace in it,
 despite us calling .map on the cards array in order to transform it into integer values.
We did not use .map!, so the values were only changed to integers within that block,
 and not the actual cards array itself. Therefore we are unable to add :ace to other integers in order 
to get the sum of cards array.

The reason the sum is less than it's supposed to be is because we .pop out the card permanently
 in all four of the arrays referenced by the deck hash. Each suit is a reference to the same array,
 not one array per suit, and therefore the card that gets popped is gone from all four arrays, 
instead of just one. We can .clone each array in the deck hash in order to create new array
 objects for each suit.
=end