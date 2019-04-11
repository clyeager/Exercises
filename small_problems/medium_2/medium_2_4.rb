#Input: string
#Output: boolean
#Rules: true if all parentheses are matching pairs, false otherwise

def balanced?(string)
  chars = string.split('')
  chars.each_with_index do |char, index|
    if char == '('
      index_of_pair = chars.find_index(')')
      return false if index_of_pair == nil
      chars.delete_at(index_of_pair)
    elsif char == ')'
      return false
    end
  end
  true
end

balanced?('What (is) this?')
balanced?('What is) this?')
balanced?('What (is this?')
balanced?('((What) (is this))?')
balanced?('((What)) (is this))?')
balanced?('Hey!')
balanced?(')Hey!(')
balanced?('What ((is))) up(')
