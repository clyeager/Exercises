#first attempt

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    new_strand = nil

    if @strand.size != other_strand.size
      new_strand, other_strand = equalize_strands(other_strand)
    end

    count = 0
    (new_strand || @strand).chars.each_with_index do |letter, idx|
      count += 1 if letter != other_strand[idx]
    end
    count
  end

  def equalize_strands(other_strand)
    if @strand.size < other_strand.size
      return [@strand, other_strand.slice(0, @strand.size)]
    else
      return [@strand.slice(0, other_strand.size), other_strand]
    end
  end
end

#second solution

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    count = 0
    @strand.chars.each_with_index do |letter, idx|
      break if idx > (@strand.size - 1) || idx > (other.size - 1)
      count += 1 if letter != other[idx]
    end
    count
  end
end
