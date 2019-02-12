#Input: three integer scores
#Output: string letter value of average of three scores

LETTER_GRADE = {
  (90..100) => "A",
  (80..89) => "B",
  (70..79) => "C",
  (60..69) => "D",
  (0..59) => "F"
}

def get_grade(g1, g2, g3)
  average = ((g1 + g2 + g3) / 3).round
  score = ''
  LETTER_GRADE.each do |k, v|
    score = v if k.include?(average)
  end
  score
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"