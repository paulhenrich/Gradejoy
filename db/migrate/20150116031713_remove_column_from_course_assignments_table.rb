class RemoveColumnFromCourseAssignmentsTable < ActiveRecord::Migration
  def change
    remove_index :course_assignments, :student_id
    remove_column :course_assignments, :student_id, :integer
  end
end
