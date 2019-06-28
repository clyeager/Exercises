class Card
  attr_reader :rank, :suit, :numerical_rank

  include Comparable

  def initialize(rank, suit)
    @suit = suit
    @numerical_rank = calculate_numerical_rank(rank)
    @rank = rank
  end

  def <=>(other_card)
    numerical_rank <=> other_card.numerical_rank
  end

  def calculate_numerical_rank(card_rank)
    case card_rank
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else
      card_rank
    end
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  attr_accessor :deck

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = new_deck
  end

  def new_deck
    new_deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        new_deck << Card.new(rank, suit)
      end
    end
    new_deck
  end

  def draw
    if deck.empty?
      new_deck
    end
    card = deck.sample
    deck.delete_if { |card_obj| card_obj.suit == card.suit && card_obj.rank == card.rank }
    card
  end
end

class PokerHand
  attr_accessor :poker_hand

  def initialize(new_deck)
    self.poker_hand = []
    5.times { self.poker_hand << new_deck.draw }
  end

  def print
    poker_hand.each { |card| puts "#{card.rank} of #{card.suit}" }
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def royal_flush?
    royals = [10, 'Jack', 'Queen', 'King', 'Ace']
    poker_hand.each do |card|
      if !royals.include?(card.rank)
        return false
      end
    end
    flush?
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    order = poker_hand.map(&:rank)
    order.uniq.each do |card|
     return true if order.count(card) == 4
    end
    false
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    suits = poker_hand.map { |card| card.suit }
    return true if suits.any? { |suit| suits.count(suit) == 5 }
    false
  end

  def straight?
    order = (poker_hand.map(&:numerical_rank)).sort
    4.times do |position|
      next if order[position] + 1 ==
      order[position + 1]
      return false
    end
  end

  def three_of_a_kind?
    order = poker_hand.map(&:rank)
    order.uniq.each do |card|
      return true if order.count(card) == 3
    end
    false
  end

  def two_pair?
    count = 0
    order = poker_hand.map(&:rank)
    order.uniq.each do |card|
     count += 1 if order.count(card) == 2
    end
    count == 2
  end

  def pair?
    order = poker_hand.map(&:rank)
    order.uniq.each do |card|
     return true if order.count(card) == 2
    end
    false
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'