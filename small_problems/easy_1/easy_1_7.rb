#Input: positive integer
#Output: string of alternating 1s and 0s, starting with 1
#Rules: length of string should match the integer

def stringy(n)
  string = ''
  
  n.times do |num|
    if num.odd?
      string << '0'
    else
      string << '1'
    end
  end
  
string
  
end

puts stringy(10)