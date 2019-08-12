class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    count = Hash.new(0)
    @phrase.gsub!(/[^a-zA-Z0-9']/, ' ')
    @phrase.gsub!(/(\B'\b|\b'\B)/, ' ') if @phrase.match(/(\B'\b|\b'\B)/)

    @phrase.split.each do |word| 
      count[word] += 1
    end
    count
  end
end