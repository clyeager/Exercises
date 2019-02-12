#Input: string
#Output: array of substrings that start at beginning of original string
#Rules: shortest to longest

def substrings_at_start(string)
  index = 0
  count = 1
  substrings = []
  until count == string.length + 1
    substrings << string.slice(index, count)
    count += 1
  end
  substrings
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']