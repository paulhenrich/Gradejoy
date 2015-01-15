class RemoveCouseAssignmentTable < ActiveRecord::Migration
  def change
    drop_table :couse_assignments
  end
end
