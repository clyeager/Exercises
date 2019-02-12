#Input: string
#Output: returns new string containing value of original string with all
#consecutive duplicate characters collapsed into a single character
#Rules: No String#squeeze or String#squeeze!

def crunch(string)
  last_char_used = []
  new_string = ''
  string.each_char do |char|
    new_string << char if char != last_char_used.last
    last_char_used << char
  end
  new_string
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''