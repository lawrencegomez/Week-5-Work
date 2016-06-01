class CreateCandies < ActiveRecord::Migration
  def change
    create_table :candies do |t|
      t.text :description
      t.string :category
      t.float :weight
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
