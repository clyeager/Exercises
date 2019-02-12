#Input: non-empty string
#Output: returns middle character or characters
#Rules: odd length string returns one char, even returns two

def center_of(string)
  if string.length.even?
    first_middle_char = string[((string.length / 2) -1)]
    last_middle_char = string[string.length / 2]
    first_middle_char + last_middle_char
  else
    string[string.length / 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'