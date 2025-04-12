class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :available_quantity
      t.integer :minimal_quantity
      t.integer :alias

      t.timestamps
    end
  end
end
