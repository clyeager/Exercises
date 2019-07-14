#create a range#step method that takes 3 arguments: starting value, ending value, 
#step value, and a block

def step(start_val, end_val, step_val)
  value = start_val
  yield(start_val)

  until value >= end_val
    yield(value += step_val)
  end
  value
end

p step(1, 10, 3) { |value| puts "value = #{value}" }