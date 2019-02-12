#Input: string
#Output: hash with three entries
#Rules: entry 1-represents the number of chars in string that are lowercase
#entry 2-the number of chars that are uppercase
#entry 3-number of chars that are neither

def letter_case_count(string)
  hash = {}
  string.chars.each do |char|
    case char
      when char =~ /[a-z]/
        if hash.keys.include?(:lowercase)
          hash[:lowercase] += 1
        else
          hash[:lowercase] = 1
        end
      when char =~ /[A-Z]/
        if hash.keys.include?(:uppercase)
          hash[:uppercase] += 1
        else
          hash[:uppercase] = 1
        end
      else
        if hash.keys.include?(:neither)
          hash[:neither] += 1
        else
          hash[:neither] = 1
        end
      end
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }