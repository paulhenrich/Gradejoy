class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_index :students, :first_name
    add_column :students, :last_name, :string
    add_index :students, :last_name
    add_column :students, :grade_level, :integer
    add_index :students, :grade_level
    add_column :students, :birth_month, :integer
    add_index :students, :birth_month
    add_column :students, :birth_day, :integer
    add_index :students, :birth_day
    add_column :students, :birth_year, :integer
    add_index :students, :birth_year
  end
end
