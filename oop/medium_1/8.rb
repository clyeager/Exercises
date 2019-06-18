class Card
  attr_reader :rank, :suit, :numerical_rank

  include Comparable

  def initialize(rank, suit)
    @rank = rank
    @numerical_rank = calculate_numerical_rank(rank)
    @suit = suit
  end

  private

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

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards

puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8

#Further exploration: update class so a 4 of Spades outranks a 4 of Hearts which 
#outranks a 4 of Clubs which outranks a 4 of Diamonds.

class Card
  attr_reader :rank, :suit, :numerical_rank

  SUIT_ORDER = {
    'Diamonds' => 1, 'Clubs' => 2,
    'Hearts' => 3, 'Spades' => 4
  }

  include Comparable

  def initialize(rank, suit)
    @rank = rank
    @numerical_rank = determine_numerical_rank(rank)
    @suit = suit
  end

  def determine_numerical_rank(rank)
    case rank
    when 'Jack' then 11
    when 'Queen' then 12
    when 'King' then 13
    when 'Ace' then 14
    else
      rank
    end
  end

  def <=>(other)
    if suit == other.suit
      numerical_rank <=> other.numerical_rank
      SUIT_ORDER[suit] <=> SUIT_ORDER[other.suit]
    else
      numerical_rank <=> other.numerical_rank
    end
  end

  def ==(other_obj)
    numerical_rank == other_obj.numerical_rank
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8