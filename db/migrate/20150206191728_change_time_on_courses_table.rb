class ChangeTimeOnCoursesTable < ActiveRecord::Migration
  def change
    remove_column :courses, :time, :string
    add_column :courses, :time, :time
    add_index :courses, :name
    add_index :courses, :time
    add_index :courses, :period
    add_index :courses, :section
  end
end
