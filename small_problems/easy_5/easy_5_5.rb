#Input: string of words and non-alphabetic characters
#Output: returns string with all non-alphabetic chars replaced by spaces
#Rules: if one or more non-alpha chars occur in a row, only have one space in output

def cleanup(string)
  alphas = ('a'..'z').to_a + ('A'..'Z').to_a
  new_string = ''
  string.chars.each do |char| 
    if alphas.include?(char)
      new_string << char
    else
      new_string << ' '
    end
  end
  new_string.squeeze(' ')
end

cleanup("---what's my +*& line?") == ' what s my line '