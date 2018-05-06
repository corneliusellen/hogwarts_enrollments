class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :enrollments
  has_many :students, through: :enrollments

  def self.subjects_with(house_name)
  	joins(:students)
  	.distinct
    .where(students: {house: house_name})
  end

  def breakdown_students
  	students.group(:house).count
  end
end
