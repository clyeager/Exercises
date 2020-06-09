class WordProblem
  def initialize(string)
    @string = string
  end

  def answer
    raise ArgumentError unless validate_string
    answer = @string.gsub('by', '').scan(/-?\d+.+\d+\b/).join.split

    until answer.size == 1
      first = answer[0].to_i
      operation = answer[1]
      second = answer[2].to_i
      answer[0..2] = case operation
                     when 'plus' then first.send(:+, second)
                     when 'minus' then first.send(:-, second)
                     when 'divided' then first.send(:/, second)
                     when 'multiplied' then first.send(:*, second)
                     end
    end
    answer[0]
  end

  def validate_string
    @string.match(/-?\d+\s+(plus|minus|divided|multiplied)\s+(by)?\s*-?\d+/)
  end
end
