class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)
    @phrase.downcase.gsub(/[^a-zA-Z0-9\s'\s]/, ' ').split.each do |word|
      count[word] += 1
    end
    count
  end
end