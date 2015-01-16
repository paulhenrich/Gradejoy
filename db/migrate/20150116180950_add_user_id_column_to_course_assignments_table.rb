class AddUserIdColumnToCourseAssignmentsTable < ActiveRecord::Migration
  def change
    add_column :course_assignments, :user_id, :integer
    add_index :course_assignments, :user_id
  end
end
