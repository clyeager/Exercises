#Input: string
#Output: returns list of all substrings that are palindromic
#Rules: Palindromic is a sequence of chars same forwards as backwards
#Include duplicates multiple times
#Order substrings in same order they appear in original
#No single chars; case sensitive

def palindromes(string)
  all_substrings = all_substrings(string)
  palindromes = []
  all_substrings.each do |substring|
    palindromes << substring if substring == substring.reverse && substring.length > 1
  end
  palindromes
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]