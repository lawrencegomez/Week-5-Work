class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :color
      t.string :style
      t.string :material

      t.timestamps null: false
    end
  end
end
