class AddDetailsToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :title, :string
    add_index :assignments, :title
    add_column :assignments, :date_created, :date
    add_index :assignments, :date_created
    add_column :assignments, :date_due, :date
    add_index :assignments, :date_due
    add_column :assignments, :category, :string
    add_index :assignments, :category
    add_column :assignments, :points_earned, :decimal
    add_index :assignments, :points_earned
    add_column :assignments, :total_points, :decimal
    add_index :assignments, :total_points
  end
end
