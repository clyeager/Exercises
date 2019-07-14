factorial = Enumerator.new do |y|
  count = 0
  loop do
    if count.zero? || count == 1
      y << 1
    else
      y << (1..(count + 1)).to_a.reduce(:*)
    end
    count += 1
  end
end

7.times { puts factorial.next }

factorial.rewind

factorial.each_with_index do |num, idx|
  puts num
  break if idx == 6
end

