def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=begin
The reason 'boring' is skipped over is because on each .delete, we are mutating the array.
 Since we delete the word 'dull' right before we get to 'boring', there is now an empty spot at the 
index before 'boring', and therefore all of the other elements are shifted over.
 'Boring' is now in index 1, and the iteration is now on index 2. We can fix this by calling a different
 method, such as reject, which does not mutate.
=end
