#Input: array grocery list of fruits with quantities
#Output: array of correct number of fruit

def buy_fruit(array)
  fruits = []
  array.each do |fruit_array|
   fruit_array[1].times do |n|
     fruits << fruit_array[0]
    end
  end
  fruits
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]