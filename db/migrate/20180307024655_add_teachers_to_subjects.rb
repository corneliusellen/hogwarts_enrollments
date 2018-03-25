class AddTeachersToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :subjects, :teacher, foreign_key: true
  end
end
