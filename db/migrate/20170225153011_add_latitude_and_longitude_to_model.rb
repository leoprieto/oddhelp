class AddLatitudeAndLongitudeToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :models, :latitude, :float
    add_column :models, :longitude, :float
  end
end
