#Input: string
#Output: new string
#Rules: every uppercase to lowercase; lowercase to uppercase; all other unchanged

def swapcase(string)
  swap = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  swap.join
end

swapcase('CamelCase')
swapcase('Tonight on XYZ-TV')