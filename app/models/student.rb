class Student < ApplicationRecord
  has_many :enrollments
  has_many :subjects, through: :enrollments

  def self.highest_average_grade_array
    joins(:enrollments)
		.group(:id)
		.order("max(grade) desc")
		.average(:grade)
		.first
  end

  def self.highest_average_grade_object
    select("students.*, avg(grade) AS average")
    .joins(:enrollments)
    .group(:id)
		.order("max(grade) desc")
    .first
  end

  def find_weasleys
    where("name LIKE '%Weasley%'")
  end

  def self.below_average
    select("name, avg(grade) AS average_grade")
    .joins(:enrollments)
    .group(:name)
    .order("avg(grade) desc")
    .having("avg(grade) < ?",  Enrollment.average_grade)
  end
