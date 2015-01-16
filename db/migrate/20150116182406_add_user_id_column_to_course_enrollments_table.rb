class AddUserIdColumnToCourseEnrollmentsTable < ActiveRecord::Migration
  def change
    add_column :course_enrollments, :user_id, :integer
    add_index :course_enrollments, :user_id
  end
end
