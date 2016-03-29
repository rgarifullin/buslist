class AddNumberToVehicleLicences < ActiveRecord::Migration
  def change
    add_column :vehicle_licences, :number, :integer
  end
end
