class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
        t.references :student, index: true
        t.references :assignment, index: true
        t.decimal :points_earned, index:true
      t.timestamps
    end
  end
end
