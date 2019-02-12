#Rules: Same as previous, except word size will not include non-letters

def word_sizes(string)
  hash = {}
  string.split.each do |word|
    if hash.has_key?(word.gsub(/[^a-z]/i, '').size)
      hash[word.gsub(/[^a-z]/i, '').size] += 1
    else
      hash[word.gsub(/[^a-z]/i, '').size] = 1
    end
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}