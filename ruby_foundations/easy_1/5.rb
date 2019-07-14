#write a program to print the encrypted names in the following

NAMES = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def create_lookup
  pairs = []

  ('A'..'M').to_a.each_with_index do |letter, idx|
    ('N'..'Z').to_a.each_with_index do |second_letter, second_idx|
      next if second_idx != idx
      pair = second_letter
      pairs << [letter, pair]
    end
  end
  pairs
end

def decipher(string)
  cipher = 13
  name = []
  pairs = create_lookup

  string.chars.each do |el|
    name << ' ' if el == ' '
    el == el.upcase ? cap = true : cap = false

    array = pairs.select { |sub_arr| sub_arr.include?(el.upcase) }
    array.flatten.each do |letter|
      if cap == true
        name << letter.upcase if letter != el.upcase
      else
        name << letter.downcase if letter != el.upcase
      end
    end
  end
  name.join
end

NAMES.each { |name| puts decipher(name)}
