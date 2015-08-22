class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.string :unit
      t.integer :cuantity
      t.integer :calories

      t.timestamps null: false
    end
  end
end
