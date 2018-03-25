class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :student, foreign_key: true
      t.references :subject, foreign_key: true
      t.decimal :grade
    end
  end
end
