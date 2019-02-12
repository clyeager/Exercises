def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin
The problem is that when the string is split into an array (from the method 'chars' call), you are creating
 a new array and are no longer referencing the original string. The characters in the array are upcased,
 but not the original string. To fix it, we must call upcase on the reference to the original string, which is the name variable.
=end

def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end