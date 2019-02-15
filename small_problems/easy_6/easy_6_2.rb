#Input: array of strings
#Output: array of same string values, vowels removed

def remove_vowels(array)
  array.each { |string| string.delete!('aeiouAEIOU') }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))