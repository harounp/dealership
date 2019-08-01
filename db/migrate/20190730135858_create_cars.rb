class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :style
      t.string :colour
      t.integer :seats
      t.integer :range
      t.string :fuel
      t.boolean :awd
      t.boolean :transmission
      t.integer :mileage
      t.float :price

      t.timestamps
    end
  end
end
