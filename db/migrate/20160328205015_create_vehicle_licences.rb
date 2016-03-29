class CreateVehicleLicences < ActiveRecord::Migration
  def change
    create_table :vehicle_licences do |t|
      t.integer :bus_id
      t.integer :digit_code
      t.string :letter_code
      t.date :release_date

      t.timestamps null: false
    end

    add_index :vehicle_licences, :bus_id, unique: true
  end
end
