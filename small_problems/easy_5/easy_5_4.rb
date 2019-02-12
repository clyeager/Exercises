#Input: string of words separated by spaces
#Output: string where first and last letters of words are swapped
#Rules: assume every word contains at least one letter
#string will always contain at least one word
#each string contains nothing but words or spaces

def swap(string)
  if string.split.size > 1
    array = string.split.each do |word|
      word[0], word[-1] = word[-1], word[0]
    end
    array.join(' ')
  elsif string.length <= 1
    string
  else
    first = string[0]
    last = string[-1]
    string[0] = last
    string[-1] = first
    string
  end
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'