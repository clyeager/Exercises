require 'pry'

class RunLengthEncoding
  def self.encode(string)
    arr = string.chars
    sets = []
    loop do
      sets << arr.take_while { |obj| obj == arr[0] }
      arr = arr.drop_while { |obj| obj == arr[0] }
      break if arr.empty?
    end
    sets.map { |set| set.count > 1 ? "#{set.count}#{set[0]}" : "#{set[0]}" }.join
  end

  def self.decode(string)
    arr = string.chars
    sets = []
    loop do
      if arr[0].to_i.is_a?(Integer) && arr[0].to_i != 0
        sets << arr[1] * arr[0].to_i
        arr = arr.drop_while { |obj| obj == arr[0] || obj == arr[1] }
      else
        sets << arr[0]
        arr = arr.drop_while { |obj| obj == arr[0] }
      end
      break if arr.empty?
    end
    sets.join
  end
end
input = '2A3B4C'
RunLengthEncoding.decode(input)