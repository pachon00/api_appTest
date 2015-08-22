class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :day
      t.datetime :time

      t.timestamps null: false
    end
  end
end
