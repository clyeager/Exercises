#Input: two strings
#Output: One string concatentated
#Rules: Assume strings are different lengths
#Steps: Determine the longest of the two strings


def short_long_short(string1, string2)
  longest_string = string1.length <=> string2.length
  if longest_string == 1
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"