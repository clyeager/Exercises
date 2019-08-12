class School
  def initialize
    @grades = Hash.new([])
  end

  def to_h
    (@grades.each { |grade, names_arr| names_arr.sort!}).sort.to_h
  end

  def add(name, grade)
    @grades.keys.include?(grade) ? @grades[grade] << name : @grades[grade] = [name]
  end

  def grade(n)
    @grades[n]
  end
end