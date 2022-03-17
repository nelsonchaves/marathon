class CreateFuelCalculators < ActiveRecord::Migration[7.0]
  def change
    create_table :fuel_calculators do |t|
      t.string :weight
      t.string :distance
      t.string :elevation
      t.string :estimate_time
      t.string :temperature
      t.string :estimate_start

      t.timestamps
    end
  end
end
