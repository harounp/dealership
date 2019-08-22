class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.string :model
      t.references :car_make, foreign_key: true
      t.integer :range
      t.integer :seats
      t.string :fuel

      t.timestamps
    end
  end
end
