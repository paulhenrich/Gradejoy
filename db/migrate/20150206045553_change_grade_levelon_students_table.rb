class ChangeGradeLevelonStudentsTable < ActiveRecord::Migration
  def change
    remove_index :students, column: :grade_level
    remove_column :students, :grade_level, :integer
    add_column :students, :grade_level, :string
    add_index :students, :grade_level

  end
end
