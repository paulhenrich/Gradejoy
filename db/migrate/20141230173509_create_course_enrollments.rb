class CreateCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.references :course, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
