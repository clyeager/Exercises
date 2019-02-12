#Input: short line of text
#Ouput: print text within a box

def print_in_box(str)
    width = str.size
    puts '+' + '-' * (width + 2) + '+'
    puts '|' + ' ' * (width + 2) + '|'
    puts '|' + ' ' + str + ' ' + '|'
    puts '|' + ' ' * (width + 2) + '|'
    puts '+' + '-' * (width + 2) + '+'
end

print_in_box('To boldly go where no one has gone before.')