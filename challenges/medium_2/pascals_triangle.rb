class Triangle
  def initialize(size)
    @size = size
    @master_arr = setup
  end

  def setup
    master = []
    (1..@size).each { |row| master << ([nil] * row) }
    master
  end

  def rows
    @master_arr.each_with_index do |row, index|
      row.each_with_index do |_, idx|
        if idx.zero? || idx == (row.size - 1)
          row[idx] = 1
        else
          previous_row = @master_arr[index - 1]
          row[idx] = previous_row[idx - 1] + previous_row[idx]
        end
      end
    end
  end

  def last
    @master_arr.last
  end
end
