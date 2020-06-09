require 'pry'

class House

  def self.recite
    puts 'This is ' + pieces[11][0] + ".\n\n"
    (10).downto(0) do |section|
      puts 'This is ' + pieces[section][0]
      counter = 11 - section
      until counter == 0
      puts pieces[section][1] + ' ' + pieces[section + 1][0]
      counter -= 1
      end
      binding.pry
    end
  end

  def rest_of_rhyme(next_section)
    current_section = next_section
    until current_section == 11
    pieces[next_section][0]
  end
  end

  private

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

House.recite

#every line starts with 'this is'
#every line before a blank line ends with the house that jack built
#starting at end of array going up to form the paragraphs(array.size-1.downto(0) do |section|)
#section > 0 ? This is + section + /n : This is + section
#pieces[section..-1].each do |rest_of_rhyme|
#period at the end of each section before newline