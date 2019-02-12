#Input: two arrays each containing a list of numbers
#Output: new array with product of every pair possible
#Rules: sorted by increasing value
#Neither array is empty

def multiply_all_pairs(arr1, arr2)
  product = []
  arr1.each do |n|
    arr2.each do |num|
      product << (n * num)
    end
  end
  product.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) 