class Anagram
  def initialize(word)
    @word = word
  end

  def match(options)
    options.select do |option|
      next if option.downcase == @word.downcase || @word.size != option.size
      option.downcase.chars.all? do |letter|
        @word.downcase.count(letter) == option.downcase.chars.count(letter.downcase)
      end
    end
  end
end