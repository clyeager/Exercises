require 'pry'
class Prime
  MAX = 987_654_321

  def self.nth(n)
    primes = []
    raise ArgumentError if n == 0
    return primes[0] if n == 1
    return primes[1] if n == 2

    2.upto(MAX) do |num|
      break if primes.size >= n
      is_factor = false
      (1..(Math.sqrt(num).to_i)).each do |factor|
        if num % factor == 0
          is_factor = true
          break
        end
      end
      primes << num unless is_factor
    end
    primes[n - 1]
  end
end

puts Prime.nth(6)