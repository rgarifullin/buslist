class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
