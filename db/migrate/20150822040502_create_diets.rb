class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.string :description
      t.integer :calories

      t.timestamps null: false
    end
  end
end
