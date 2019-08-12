class PigLatin
  def self.translate(string)
    return string.concat('ay') if string.start_with?(/([aeiou])|(x[^aeiouy])|(y[^aeiouy])/)
    new_string = []

    string.split.each do |word|
      slice_at = word.start_with?(/qu|squ/) ? (word.index('u')) + 1 : (word[1..-1].index(/[aeiuoy]/)) + 1
      new_string << word[slice_at..-1].concat(word[0...slice_at]).concat('ay')
    end
    new_string.join(' ')
  end
end