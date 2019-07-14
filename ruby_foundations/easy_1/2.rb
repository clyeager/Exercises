#write a method that takes an optional block

def compute
  if block_given?
    return_value = yield
    return return_value
  end

  "Does not compute."
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'