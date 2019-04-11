#Input: string word
#Output: boolean
#Rules: using a set of spelling blocks,each with two letters,
#check if word can be spelled using blocks
#Each block can be used once

BLOCKS = [['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['F','S'],['J','W'],['H','U'],['V','I'],['L','Y'],['Z','M']]

def block_word?(word)
  blocks = BLOCKS.dup
  letters = word.upcase.split('')
  blocks_used = []

  letters.each do |letter|
    blocks.each do |block|
      if block.include?(letter)
        blocks_used << block
        blocks.delete(block)
      end
    end
  end
  blocks_used.size == word.size
end

block_word?('BATCH')
block_word?('BUTCH')
block_word?('jest')