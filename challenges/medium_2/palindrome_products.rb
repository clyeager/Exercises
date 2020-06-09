class Palindrome
  attr_reader :value, :factors

  def initialize(value, factors)
    @value = value
    @factors = factors.uniq
  end
end

class Palindromes
  def initialize(max_factor: 1, min_factor: 1)
    @max = max_factor
    @min = min_factor
    @all_pals = Hash.new([])
  end

  def generate
    (@min..@max).each do |n|
      (@min..@max).each do |num|
        next unless palindrome?(n * num)
        if @all_pals.keys.include?(n * num)
          @all_pals[n * num] << [n, num].sort
        else
          @all_pals[n * num] = [[n, num].sort]
        end
      end
    end
  end

  def palindrome?(n)
    n.digits.join.to_i == n
  end

  def largest
    key = @all_pals.keys.sort[-1]
    Palindrome.new(key, @all_pals[key])
  end

  def smallest
    key = @all_pals.keys.sort[0]
    Palindrome.new(key, @all_pals[key])
  end
end
