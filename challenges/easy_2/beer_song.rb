class BeerSong
  def initialize
    @lyrics = ''
  end

  def lyrics(start = 99, stop = 0)
    start.downto(stop) do |amount|
      case amount
      when (2..99)
        amount == 2 ? two_left = true : two_left = false
        @lyrics += "#{amount} bottles of beer on the wall, #{amount} bottles of beer.\n" \
                   "Take one down and pass it around, #{amount - 1} #{two_left ? 'bottle' : 'bottles'} of beer on the wall.\n"
        @lyrics += amount == stop ? "" : "\n" \
      when 1
        @lyrics += "1 bottle of beer on the wall, 1 bottle of beer.\n" \
                   "Take it down and pass it around, no more bottles of beer on the wall.\n"
        @lyrics += amount == stop ? "" : "\n" \
      when 0
        @lyrics += "No more bottles of beer on the wall, no more bottles of beer.\n" \
                   "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end
    end
    @lyrics
  end

  def verse(num)
    lyrics(num, num)
  end

  def verses(from_num, to_num)
    lyrics(from_num, to_num)
  end
end