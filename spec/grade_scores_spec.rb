require "spec_helper"

describe GradeScores do
  describe "#letter_grade" do
    it "returns an A for a score greater than 90" do
      score = 93
      grade = GradeScores.new(score)

      expect(grade.letter_grade(score)).to eq('A')
    end
    it "returns a B for a score greater than 80" do
      score = 83
      grade = GradeScores.new(score)

      expect(grade.letter_grade(score)).to eq('B')
    end
    it "returns a C for a score greater than 70" do
      score = 73
      grade = GradeScores.new(score)

      expect(grade.letter_grade(score)).to eq('C')
    end
    it "returns a D for a score greater than 60" do
      score = 63
      grade = GradeScores.new(score)

      expect(grade.letter_grade(score)).to eq('D')
    end
    it "returns an F for a score less than 60" do
      score = 53
      grade = GradeScores.new(score)

      expect(grade.letter_grade(score)).to eq('F')
    end

 end
end
