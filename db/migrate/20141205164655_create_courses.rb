class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :time
      t.string :period
      t.timestamps
    end
  end
end
