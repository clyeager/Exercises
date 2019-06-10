class Card
  attr_reader :rank, :suit, :numerical_rank

  include Comparable

  def initialize(suit, rank)
    @suit = suit
    @numerical_rank = calculate_numerical_rank(rank)
    @rank = rank
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

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = []
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

  private

  def new_deck
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck << Card.new(suit, rank)
      end
    end
  end

  attr_accessor :deck
end
