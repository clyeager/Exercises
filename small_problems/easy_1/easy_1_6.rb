#Input: string containing one of more words
#Output: same string with all give or more letter words reversed
#Rules: string will only contain letters and spaces
#Only include spaces when one or more words are present

def reverse_string(string)
  new_string = string.split(' ').each do |word|
      word.reverse! if word.length >= 5
  end
new_string.join(' ')
end

puts reverse_string('Hi there')
puts reverse_string("watermelon")
puts reverse_string('Hi')
puts reverse_string("Launch School")