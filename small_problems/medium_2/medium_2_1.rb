#Input: text file
#Output: string - print the longest sentence in file, and integer for 
#Rules: sentence may end in ., !, or ?
#Any sequence of chars that are not spaces or sentence-ending chars are treated as words

text = File.read('example-text.txt')
sentences = text.split(/\!|\?|\./)
longest_string = nil
longest_size = 0
sentences.each do |string|
  current_string_size = string.split.size
  if current_string_size > longest_size
    longest_size = current_string_size
    longest_string = string
  end
end
puts "The longest string is #{longest_string}"
puts "This sentence has a size of #{longest_size}."