class ChangeCarModelColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :make
    remove_column :cars, :model
    remove_column :cars, :range
    remove_column :cars, :seats
    remove_column :cars, :fuel

    add_reference :cars, :car_model, foreign_key: true
  end
end
