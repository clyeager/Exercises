#Input: array
#Output: original array object reversing its elements in place
#Rules: no Array#reverse or Array#reverse!

def reverse!(array)
  idx1 = 0
  idx2 = array.size - 1

  until idx1 == (array.size / 2)
    first_num = array[idx1]
    second_num = array[idx2]
    array[idx1] = second_num
    array[idx2] = first_num
    idx1 += 1
    idx2 -= 1
  end
  array
end


list = [1,2,3,4]
result = reverse!(list)
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []