#Input: a string and a positive integer
#Output:prints string as many times as the integer

def repeat(string, n)
  n.times do puts string end
end

repeat('hi', 8)