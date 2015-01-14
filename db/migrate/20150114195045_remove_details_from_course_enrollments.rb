class RemoveDetailsFromCourseEnrollments < ActiveRecord::Migration
  def change
    remove_index :course_enrollments, :last_name
    remove_column :course_enrollments, :last_name, :string
    remove_index :course_enrollments, :first_name
    remove_column :course_enrollments, :first_name, :string
    remove_index :course_enrollments, :name
    remove_column :course_enrollments, :name, :string
  end
end
