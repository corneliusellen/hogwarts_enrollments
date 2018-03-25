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

  def self.highest_grade_simple
    select("name, grade")
    .joins(:enrollments)
    .order("grade desc")
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

  def average_grade_for_each_student
    Enrollment.select("student_id, avg(grade) AS average_grade").group("student_id").order("avg(grade) desc").first.average_grade
  end

  def average_grade_for_each_student_BUT_WANT_NAME
    Student.select("name, avg(grade) AS average_grade").joins(:enrollments).group("name").order("avg(grade) desc")
  end
    #
    # Interesting if you do this method on the Enrollemnt class, it just gives you an active record relation of Enrollment... don't know what this means yet...
    #   ALSO must do your joins with colon and not quotes!!

  def student_class_count
    Student.joins(:enrollments).select("name, count(name) AS class_count").group("name").order("count(name) desc")
  end
end

    # interesting that you need to stick an order at the end in order to call a first record!!! wtf (but also needs to be used in conjunction with the select!)
    #
    # also the order of select and joins doesn't matter
    #
    # CAN ALSO DO THIS BUT I GET A HASH:
    # Student.joins(:enrollments).group("name").count("name")
    #
    # (START WITH THIS^^ ONE. say you want to turn it into an object but need BOTH select and the agregate function in the select... and then you ALSO need to add order on the end to be able to call first and such! OR you could just call a take because take doesn't depend on any implicit ordering...but then you can't call the attributes! BUT YOU CAN MAP OVER THE HASH AND CALL ATRIBUTES?!)
    #
    # so add hash to the list... select will ensure you don't get a hash...I think it also has to do with the aggregate on the
