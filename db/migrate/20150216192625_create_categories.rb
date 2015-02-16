class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category
      t.decimal :weight

      t.timestamps
    end
    add_index :categories, :category
    add_index :categories, :weight
  end
end
