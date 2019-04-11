require 'pry'
#Input: string
#Output: hash with three entries
#Rules: One entry represents percentage of chars that are lowercase
#One entry for percentage of uppercase, and one enty for percentage of neither
#String will always have at least one char

def letter_percentages(string)
  chars = string.split('')
  percentage = {}
  lower_case_count = chars.count{ |char| char =~ /[a-z]/ }
  upper_case_count = chars.count{ |char| char =~ /[A-Z]/ }
  neither_count = chars.size - lower_case_count - upper_case_count
  percentage[:lowercase] = lower_case_count.to_f / chars.size * 100
  percentage[:uppercase] = upper_case_count.to_f / chars.size * 100
  percentage[:neither] = neither_count.to_f / chars.size * 100
  percentage
end

letter_percentages('abCdef 123')
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }