#Same as last exercise but case and punctuation should be ignored

def real_palindrome?(string)
  alpha_string = ''
  string.each_char {|char| alpha_string << char.downcase if (('a'..'z').include?(char.downcase) || ('0'..'9').include?(char)) }
  alpha_string == alpha_string.reverse
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false