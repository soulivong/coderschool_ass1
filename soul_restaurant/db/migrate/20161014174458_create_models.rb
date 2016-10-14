class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :foodItem
      t.string :name
      t.text :description
      t.decimal :price
      t.string :section
      t.string :remote_image_url

      t.timestamps null: false
    end
  end
end
