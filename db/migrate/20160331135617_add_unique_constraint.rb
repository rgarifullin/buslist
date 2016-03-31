class AddUniqueConstraint < ActiveRecord::Migration
  def change
    add_index :number_plates, [:series, :number, :region], unique: true
    add_index :vehicle_licences, [:digit_code, :letter_code, :number], unique: true
  end
end
