items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*value1, value2|
  puts value1.join(', ')
  puts value2
end

gather(items) do |value1, *value2, value3|
  puts value1
  puts value2.join(', ')
  puts value3
end

gather(items) do |value1, *value2|
  puts value1
  puts value2.join(', ')
end

gather(items) do |value1, value2, value3, value4|
  puts "#{value1}, #{value2}, #{value3}, and #{value4}"
end