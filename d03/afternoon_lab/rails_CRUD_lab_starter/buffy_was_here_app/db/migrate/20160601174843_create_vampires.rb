class CreateVampires < ActiveRecord::Migration
  def change
    create_table :vampires do |t|
      t.string :name
      t.integer :age
      t.string :sire
      t.boolean :staked

      t.timestamps null: false
    end
  end
end
