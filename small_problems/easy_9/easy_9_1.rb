#Input: one array, one hash
#Output: string
#Rules: array argument will contain two or more elements of a person's name
#hash will contain two keys, :title and :occupation with values
#return greeting with full name and person's title

def greetings(array, hash)
  "Hello, #{array.join(' ')}! It's nice to have a " +
  "#{hash[:title]} #{hash[:occupation]} around!"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })