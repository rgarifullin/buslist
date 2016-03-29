class CreateNumberPlates < ActiveRecord::Migration
  def change
    create_table :number_plates do |t|
      t.integer :bus_id
      t.string :series
      t.integer :number
      t.integer :region

      t.timestamps null: false
    end

    add_index :number_plates, :bus_id, unique: true
  end
end
