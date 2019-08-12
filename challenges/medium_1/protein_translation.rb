require 'pry'
class InvalidCodonError < StandardError ; end

class Translation
  CODONS = {
    ['AUG'] => 'Methionine', ['UUU', 'UUC'] => 'Phenylalanine',
    ['UUA', 'UUG'] => 'Leucine', ['UCU', 'UCC', 'UCA', 'UCG'] => 'Serine',
    ['UAU', 'UAC'] => 'Tyrosine', ['UGU', 'UGC'] => 'Cysteine',
    ['UGG'] => 'Tryptophan', ['UAA', 'UAG', 'UGA'] => 'STOP'
  }

  def self.of_codon(codon)
    protein = ''
    CODONS.each { |k,v| protein += v if k.include?(codon) }
    protein
  end

  def self.of_rna(strand)
    proteins = []

    codons = strand.split('').each_slice(3).map { |arr| arr.join }
    codons.each do |codon|
      raise InvalidCodonError.new unless valid_codon?(codon)
      translation = of_codon(codon)
      break if translation == 'STOP'
      proteins << translation
    end
    proteins
  end

  private

  def self.valid_codon?(codon)
    CODONS.keys.flatten.include?(codon)
  end
end