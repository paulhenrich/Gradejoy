class RenameCourseNameToName < ActiveRecord::Migration
  def change
    rename_column :courses, :course_name, :name
  end
end
