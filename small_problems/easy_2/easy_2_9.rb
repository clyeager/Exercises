name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

=begin
This prints

BOB
BOB
The reason is because both variable reference the same string. The original object is mutated,
 so both still point to the mutated string.
=end