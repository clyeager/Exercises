class PerfectNumber
  def self.classify(n)
    raise RuntimeError.new if n < 0

    sum = sum_factors(n)

    case
    when sum < n
      'deficient'
    when sum == n
      'perfect'
    else
      'abundant'
    end
  end

  def self.sum_factors(n)
    factors = []
    (1...n).each { |num| factors << num if n % num == 0 }
    factors.sum
  end
end