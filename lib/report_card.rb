class ReportCard
  attr_accessor :grades

  def initialize(attributes = {})
    @scores = attributes[:scores]
    @grades ||= grade_scores
  end

  private

  def grade_scores
    @scores.map do |score|
      grade_score(score)
    end
  end

  def grade_score(score)
    GradeScores.new(score).letter_grade(score)
  end
end
