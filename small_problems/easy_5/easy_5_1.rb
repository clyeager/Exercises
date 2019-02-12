#Input: string
#Output: ASCII string value of argument (sum of ASCII values of every character)
#Rules: Can use String#ord

def ascii_value(string)
  total_value = 0
  string.chars.each do |char|
    total_value += char.ord
  end
  total_value
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0