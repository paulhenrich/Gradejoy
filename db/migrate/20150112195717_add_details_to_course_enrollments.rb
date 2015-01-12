class AddDetailsToCourseEnrollments < ActiveRecord::Migration
  def change
    add_column :course_enrollments, :last_name, :string
    add_index :course_enrollments, :last_name
    add_column :course_enrollments, :first_name, :string
    add_index :course_enrollments, :first_name
    add_column :course_enrollments, :name, :string
    add_index :course_enrollments, :name
  end
end
