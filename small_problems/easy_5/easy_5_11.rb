def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

#Will the returned string be the same object as argument?

=begin
This method returns a different object, because we call split on the original string, which results in an array.
=end