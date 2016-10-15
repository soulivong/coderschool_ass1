class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
