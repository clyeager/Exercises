class OddWords
  def initialize(string)
    @string = string
  end

  def transform
    new_string = @string.gsub(/[^a-zA-Z]/, ' ')
    new_string = (new_string.split.each_with_index do |word, idx|
      word.reverse! if idx.odd?
    end).join(' ') + '.'
  end
end

#Read and print character by character

class OddWords
  def initialize(string)
    @string = string
  end

  def transform
    arr = @string.split
    arr.each_with_index do |word, idx|
      word.reverse! if idx.odd?
      word.chars.each { |char| print char unless char == '.' }
      print '.' if word.chars.include?('.')
      print ' ' unless arr[idx + 1] == '.'
    end
  end
end

string = '    hi   there  .'
odd_words = OddWords.new(string)
odd_words.transform

string = ''
odd_words = OddWords.new(string)
odd_words.transform

string = 'hi   there.'
odd_words = OddWords.new(string)
odd_words.transform

string = '   this    is    a    string    .'
odd_words = OddWords.new(string)
odd_words.transform

string = 'hello.'
odd_words = OddWords.new(string)
odd_words.transform