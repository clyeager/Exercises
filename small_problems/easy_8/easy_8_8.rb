#Input: string
#Output: new string where every consonant is doubled

def double_consonants(string)
  new_string = ''
  string.each_char do |char|
    if char =~ /[a-z]/i && char =~ /[^aeiou]/i
      new_string << char << char
    else
      new_string << char
    end
  end
  new_string
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""