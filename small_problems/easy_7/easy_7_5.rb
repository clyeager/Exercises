#Input: string
#Output: new string with staggered caps
#Rules: non-letter chars should count as chars when switching between upper and lowercase

def staggered_case(string)
  staggered = ''
  string.chars.each_with_index do |char, index|
    staggered << char.upcase if index.even?
    staggered << char.downcase if index.odd?
  end
  staggered
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')