#Input: string of a first and last name, space separated
#Output: string containing last name, comma, space, first name

def swap_name(string)
  array = string.split
  array[1] + ', ' + array[0]
end

swap_name('Joe Roberts') == 'Roberts, Joe'