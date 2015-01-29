class ChangeDataTypeAssignmentDates < ActiveRecord::Migration
  def change
    change_table :assignments do |t|
      t.change :date_created, :string
      t.change :date_due, :string
    end
  end
end
