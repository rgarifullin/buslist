class AddPhotosToBuses < ActiveRecord::Migration
  def change
    add_column :buses, :photos, :json
  end
end
