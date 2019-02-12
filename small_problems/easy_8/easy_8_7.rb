#Input: string
#Output: new string where every char is doubled

def repeater(string)
  new_string = ''
  string.chars.each do |char|
    new_string << char + char
  end
  new_string
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''