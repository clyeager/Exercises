#Input: single string
#Output: new string with original value, first char of every word capped, all others lowercase
#Rules: words are any sequence of non-blank chars

def word_cap(string)
  new_string = string.split.each { |word| word.capitalize! }
  new_string.join(' ')
end

word_cap('four score and seven')
word_cap('the javaScript language')
word_cap('this is a "quoted" word')