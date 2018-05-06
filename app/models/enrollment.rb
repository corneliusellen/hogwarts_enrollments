class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  def self.average_grade
    average(:grade)
  end

  def self.highest_average_grade
    group(:student_id)
    .order("avg(grade) desc")
    .average(:grade)
    .first
  end
end
