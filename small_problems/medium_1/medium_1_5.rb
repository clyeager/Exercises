#Input: odd integer(n)
#Output: display a 4-pointed diamond in an n x n grid

def diamond(n)
  counter = 1
  loop do
    puts ('*' * counter).center(n)
    break if counter == n
    counter += 2
  end
  loop do
    break if counter == 1
    counter -= 2
    puts ('*' * counter).center(n)
  end
end

diamond(1)
diamond(3)
diamond(9)