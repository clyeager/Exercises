#Input: array of elements
#Output: print key/value pairs from hash that counts occurrences of elements
#Rules: case sensitive

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)

occurrences = {}

array.each do |vehicle|
  if occurrences.has_key?(vehicle)
    occurrences[vehicle] += 1
  else
    occurrences[vehicle] = 1
  end
end

occurrences.each do |vehicle, value|
    puts "#{vehicle} => #{value}"
end
end 

count_occurrences(vehicles)
