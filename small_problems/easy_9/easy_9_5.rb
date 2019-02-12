#Input: string
#Output: boolean
#Rules: true if all alpha chars are uppercase, false otherwise
#Ignore non-alpha chars

def uppercase?(string)
  upper_array = string.each_char.select { |char| char =~ /[^a-z]/ }
  upper_array.join == string
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true