def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = words[i] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

#The problem is that words[i] references a string. We can not add a string to the front of an
# array with the + #sign. Instead, we must find another way, such as the unshift method.

reversed_words.unshift(words[i])