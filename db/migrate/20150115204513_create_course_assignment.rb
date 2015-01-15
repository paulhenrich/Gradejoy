class CreateCourseAssignment < ActiveRecord::Migration
  def change
    create_table :course_assignments do |t|
      t.references :course, index: true
      t.references :student, index: true
      t.references :assignment, index: true
    end
  end
end
