#Input: string
#Output: string that is next to last word in original string
#Rules: words are any sequence of non-blank chars
#Input will always contain at least two words

def penultimate(string)
words = string.split
words[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'