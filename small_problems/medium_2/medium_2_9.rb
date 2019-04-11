#Input: array
#Output: array
#Rules: sort the array using a bubble sort
#Array will be sorted in place (mutated)
#All arrays will have two or more elements

def bubble_sort!(arr)
  loop do
    break if arr == arr.sort
    counter = 0
    (arr.size - 1).times do
      smaller = arr[counter] <=> arr[counter + 1]
      if smaller == 1
        arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
      end
      counter += 1
    end
  end
  arr
end

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
#array == [1, 2, 4, 6, 7]

array = [5, 3]
p bubble_sort!(array)
#array == [3, 5]


array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
#array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

#Another solution without using .sort in conditional

def bubble_sort!(array)
  (array.size).times do
    idx1 = 0
    idx2 = 1
    swapped = false
    until idx1 == array.size - 1
      if array[idx1] > array[idx2]
        swapped = true
        array[idx1], array[idx2] = array[idx2], array[idx1]
        idx1 += 1
        idx2 += 1
      else
        idx1 += 1
        idx2 += 1
      end
    end
  break if swapped == false
  end
  array
end