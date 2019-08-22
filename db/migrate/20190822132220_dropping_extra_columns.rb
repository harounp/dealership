class DroppingExtraColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :car_models, :range
    remove_column :car_models, :seats
    remove_column :cars, :transmission
    remove_column :cars, :awd
  end
end
