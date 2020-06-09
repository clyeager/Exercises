class Crypto
  def initialize(string)
    @string = string.downcase
    @size = size
    @cipher = create_cipher
  end

  def normalize_plaintext
    @string.gsub!(/[^a-z0-9]/i, '')
    @string
  end

  def size
    normalize_plaintext
    Math.sqrt(@string.size).ceil
  end

  def plaintext_segments
    chars = @string.chars
    plaintext = []
    until chars.empty?
      plaintext << chars.shift(@size).join
    end
    plaintext
  end

  def create_cipher
    normal_text = []
    @size.times do |idx|
      word = ''
      plaintext_segments.each do |arr|
        word += arr[idx] if arr[idx]
      end
      normal_text << word
    end
    normal_text
  end

  def ciphertext
    @cipher.join
  end

  def normalize_ciphertext
    @cipher.join(' ')
  end
end
