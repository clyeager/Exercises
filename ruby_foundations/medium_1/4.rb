array = %w(raven finch hawk eagle)

def assign_raptors(array)
  raptors = yield(array)
end

assign_raptors(array) { |array| puts array[2..-1] }

#or

array = %w(raven finch hawk eagle)

def assign_raptors(array)
  raptors = yield(array)
end

assign_raptors(array) { |_, _, *raptors| puts raptors }