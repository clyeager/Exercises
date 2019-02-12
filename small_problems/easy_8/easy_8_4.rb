#Using method from previous exercise, return all substrings

def substrings(string)
  index = 0
  substrings = []
  
  loop do
    break if index == string.length
    count = 1
    
    for i in string[index].upto(string[-1])
      substrings << string.slice(index, count)
      count += 1
    end
    index += 1
  end
  substrings
end

#OR

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

def all_substrings(string)
  all_substrings = []
  index = 0
  until index == string.length
    this_substring = string[index..-1]
    all_substrings << substrings_at_start(this_substring)
    index += 1
  end
  all_substrings.flatten
end