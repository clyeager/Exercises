class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    arr = (2..@limit).to_a

    arr.each_with_index do |n, idx|
      if n
        arr.map! { |num| num && num % n == 0 && arr.index(num) > idx ? false : num }
      end
    end

    arr.select { |n| n != false }
  end
end

s = Sieve.new(10_000)
p s.primes