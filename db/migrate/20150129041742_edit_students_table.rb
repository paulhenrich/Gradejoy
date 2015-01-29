class EditStudentsTable < ActiveRecord::Migration
  def change
    remove_index :students, column: :birth_day
    remove_column :students, :birth_day, :integer
    remove_index :students, column: :birth_month
    remove_column :students, :birth_month, :integer
    remove_index :students, column: :birth_year
    remove_column :students, :birth_year, :integer
    add_column :students, :birthdate, :date
    add_index :students, :birthdate
  end
end
