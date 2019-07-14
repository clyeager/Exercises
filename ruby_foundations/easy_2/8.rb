#create an Enumberable#max_by method

def max_by(arr)
  return nil if arr.empty?

  max_element = arr[0]
  current_value = yield(arr[0])

  arr.each_with_index do |el, idx|
    if yield(el) > current_value
      max_element, current_value = el, yield(el)
    end
  end
  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil