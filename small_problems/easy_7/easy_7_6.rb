#Input: string
#Output: new string with every other letter capped, including non-letters but ignoring in case

def staggered_case(string)
  staggered = ''
  count = 1
  string.chars.each do |char|
    if char =~ /[a-z]/i
      staggered << char.upcase if count.odd?
      staggered << char.downcase if count.even?
      count += 1
    else
      staggered << char
    end
  end
  staggered
end

staggered_case('I Love Launch School!')
staggered_case('ALL_CAPS')
staggered_case('ignore 77 the 444 numbers')