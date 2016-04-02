class RemovePhotosFromBuses < ActiveRecord::Migration
  def change
    remove_column :buses, :photos, :json
  end
end
