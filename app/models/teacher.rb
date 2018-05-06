class Teacher < ApplicationRecord
  has_many :subjects

  def self.lowest_class_average_with(house)
    select("teachers.*, avg(enrollments.grade) AS average_grade")
    .joins(subjects: [enrollments: :student])
    .where(students: {house: house})
    .group(:id, :subject_id)
    .order("average_grade")
    .first
  end
end
