class Scrabble

  SCORES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
    ['D', 'G'] => 2, ['B', 'C', 'M', 'P'] => 3,
    ['F', 'H', 'V', 'W', 'Y'] => 4, ['K'] => 5,
    ['J', 'X'] => 8, ['Q', 'Z'] => 10
  }

  def initialize(string)
    @string = string
  end

  def self.score(string)
    Scrabble.new(string).score
  end

  def score
    return 0 if @string.nil? || @string.match(/[^a-z]/i)

    (@string.chars.map do |char|
      SCORES.select { |k, v| k.include?(char.upcase) }.values
    end).flatten.sum
  end
end