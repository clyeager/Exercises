#Input: integer
#Output: boolean, true if palindrome, false if not

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false