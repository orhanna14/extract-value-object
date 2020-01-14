class GradeScores

  def initialize(score)
    @score = score
  end

  def letter_grade(score)
    if score < 60
      'F'
    elsif score < 70
      'D'
    elsif score < 80
      'C'
    elsif score < 90
      'B'
    else
      'A'
    end
  end
end
