def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  set_password
end

verify_password

=begin
The problem is that we did not pass the password variable to the verify_password method,
 so this method has no access to the value of the password variable, and therefore can not verify it.
 In addition, when we try to reset the password in the set_password method, it does not work because 
this is confined to the method scope only, and not accesible through the rest of the program.
 We can fix this by setting password = set_password, and passing it into the verify_password method.
=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)