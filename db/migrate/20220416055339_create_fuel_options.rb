class CreateFuelOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :fuel_options do |t|

      t.timestamps
    end
  end
end
